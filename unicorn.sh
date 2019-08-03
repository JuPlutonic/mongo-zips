 #!/bin/sh
	### BEGIN INIT INFO
	# Provides:          unicorn
	# Required-Start:    $remote_fs $syslog
	# Required-Stop:     $remote_fs $syslog
	# Default-Start:     2 3 4 5
	# Default-Stop:      0 1 6
	# Short-Description: Manage unicorn server
	# Description:       Start, stop, restart unicorn server for a specific application.
	### END INIT INFO
	set -e

	# Feel free to change any of the following variables for your app:
	export RUBY_GC_HEAP_MIN_SLOTS=800000
	export RUBY_GC_HEAP_SLOTS_INCREMENT=250000
	export RUBY_GC_HEAP_SLOTS_GROWTH_FACTOR=1
	export RUBY_GC_MALLOC_LIMIT=50000000

	TIMEOUT=${TIMEOUT-60}
	# APP_ROOT=/var/www/zips/current
	PID=$APP_ROOT/tmp/pids/unicorn.pid
	CMD="cd $APP_ROOT && ~/.rbenv/bin/rbenv exec bundle exec unicorn -D -c $APP_ROOT/config/unicorn.rb -E staging"
	# AS_USER=deployer
	AS_USER=$(whoami)
	set -u

	OLD_PIN="$PID.oldbin"

	sig () {
	  test -s "$PID" && kill -s "$1" "$(cat $PID)"
	}

	run () {
	  if [ "$(id -un)" = "$AS_USER" ]; then
	    eval "$1"
	  else
	    su -c "$1" - $AS_USER
	  fi
	}

	case "$1" in
	start)
	  sig 0 && echo >&2 "Already running" && exit 0
	  run "$CMD"
	  ;;
	stop)
	  sig QUIT && exit 0
	  echo >&2 "Not running"
	  ;;
	force-stop)
	  sig TERM && exit 0
	  echo >&2 "Not running"
	  ;;
	restart|reload)
	  sig HUP && echo reloaded OK && exit 0
	  echo >&2 "Couldn't reload, starting '$CMD' instead"
	  run "$CMD"
	  ;;
	upgrade)
	  if sig USR2 && sleep 3
	  then
	    n=$TIMEOUT
	    while test -s $OLD_PIN && test "$n" -ge 0
	    do
	      printf '.' && sleep 1 && n=$(( $n - 1 ))
	    done
	    echo

	    if test $n -lt 0 && test -s $OLD_PIN
	    then
	      echo >&2 "$OLD_PIN still exists after $TIMEOUT seconds"
	      exit 1
	    fi
	    exit 0
	  fi
	  echo >&2 "Couldn't upgrade, starting '$CMD' instead"
	  run "$CMD"
	  ;;
	reopen-logs)
	  sig USR1
	  ;;
	*)
	  echo >&2 "Usage: $0 <start|stop|restart|upgrade|force-stop|reopen-logs>"
	  exit 1
	  ;;
	esac