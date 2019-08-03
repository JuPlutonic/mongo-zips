# -*- encoding: utf-8 -*-
# stub: will_paginate_mongoid 2.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "will_paginate_mongoid".freeze
  s.version = "2.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Lucas Souza".freeze]
  s.date = "2013-09-12"
  s.description = "".freeze
  s.email = ["lucasas@gmail.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.4".freeze
  s.summary = "An extension that becomes possible use paginate method with Mongoid".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<will_paginate>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<mongoid>.freeze, [">= 0"])
      s.add_dependency(%q<will_paginate>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<mongoid>.freeze, [">= 0"])
    s.add_dependency(%q<will_paginate>.freeze, ["~> 3.0"])
  end
end
