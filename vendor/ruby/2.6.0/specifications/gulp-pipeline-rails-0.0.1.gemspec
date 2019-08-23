# -*- encoding: utf-8 -*-
# stub: gulp-pipeline-rails 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "gulp-pipeline-rails".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kevin Ross".freeze]
  s.date = "2016-02-16"
  s.description = "Remove sprockets and use gulp-pipeline.  Simpler, faster, and integrates very well with the rest of the assets community.".freeze
  s.email = ["kevin.ross@alienfast.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.4".freeze
  s.summary = "Rails asset pipeline replacement using gulp-pipeline assets".freeze

  s.installed_by_version = "3.0.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
