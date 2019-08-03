 frozen_string_literal: true

worker_processes 3 # amount of unicorn workers to spin up
timeout 30         # restarts workers that hang for 30 seconds
# pid_file   = "shared/pids/unicorn.pid"
# socket_file= "shared/unicorn.sock"
# log_file   = "#log/unicorn.log"
# err_log    = "log/unicorn_error.log"
# old_pid    = pid_file + '.oldbin'

app_name = 'zips'
# root = '/var/www/#{app_name}/current'
# pid           "#{root}/tmp/pids/unicorn.pid"
# stderr_path   "#{root}/log/unicorn.error.log"
# stdout_path   "#{root}/log/unicorn.access.log"
stderr_path   'log/unicorn.error.log'
stdout_path   'log/unicorn.access.log'

listen "/tmp/unicorn.#{app_name}.sock", backlog: 2048

preload_app true
# working_directory root

GC.respond_to?(:copy_on_write_friendly=) &&
  GC.copy_on_write_friendly = true

before_fork do |server, worker|
  # the following is highly recomended for Rails + "preload_app true"
  # as there's no need for the master process to hold a connection
  # defined?(ActiveRecord::Base) && ActiveRecord::Base.connection.disconnect!

  ##
  # When sent a USR2, Unicorn will suffix its pidfile with .oldbin and
  # immediately start loading up a new version of itself (loaded with a new
  # version of our app). When this new Unicorn is completely loaded
  # it will begin spawning workers. The first worker spawned will check to
  # see if an .oldbin pidfile exists. If so, this means we've just booted up
  # a new Unicorn and need to tell the old one that it can now die. To do so
  # we send it a QUIT.
  #
  # Using this method we get 0 downtime deploys.

  # old_pid = "#{root}/tmp/pids/unicorn.pid.oldbin"
  # if File.exists?(old_pid) && server.pid != old_pid
  #   begin
  #     Process.kill("QUIT", File.read(old_pid).to_i)
  #   rescue Errno::ENOENT, Errno::ESRCH
  #     # someone else did our job for us
  #   end
  # end
end

after_fork do |server, worker|
  ##
  # Unicorn master loads the app then forks off workers - because of the way
  # Unix forking works, we need to make sure we aren't using any of the parent's
  # sockets, e.g. db connection

  # defined?(ActiveRecord::Base) && ActiveRecord::Base.establish_connection
  # Redis and Memcached would go here but their connections are established
  # on demand, so the master never opens a socket

  ##
  # Unicorn master is started as root, which is fine, but let's
  # drop the workers to deployer:deployer

  begin
    uid = gid = Process.euid
    user = group = 'deployer'
    target_uid = Etc.getpwnam(user).uid
    target_gid = Etc.getgrnam(group).gid
    # worker.tmp.chown(target_uid, target_gid)
    if uid != target_uid || gid != target_gid
      Process.initgroups(user, target_gid)
      Process::GID.change_privilege(target_gid)
      Process::UID.change_privilege(target_uid)
    end
  rescue => e
    raise e unless RAILS_ENV == 'development'
    STDERR.puts 'couldn\'t change user, oh well'
  end

  # if defined?(EventMachine)
  #   unless EventMachine.reactor_running? && EventMachine.reactor_thread.alive?
  #     if EventMachine.reactor_running?
  #       EventMachine.stop_event_loop
  #       EventMachine.release_machine
  #       EventMachine.instance_variable_set("@reactor_running",false)
  #     end
  #     Thread.new { EventMachine.run }
  #   end
  # end

  # Signal.trap("INT") { EventMachine.stop }
  # Signal.trap("TERM") { EventMachine.stop }
end
