# -*- encoding: utf-8 -*-
# stub: twitter-bootswatch-rails 2.3.2.8 ruby lib

Gem::Specification.new do |s|
  s.name = "twitter-bootswatch-rails"
  s.version = "2.3.2.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.11") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Scott V. Rosenthal"]
  s.date = "2013-08-12"
  s.description = "twitter-bootswatch-rails project integrates Bootstrap CSS toolkit for Rails 3.1+ Asset Pipeline with less-rails and allows you to easily cherry pick and customize a theme for your app"
  s.email = ["sr7575@gmail.com"]
  s.homepage = "https://github.com/scottvrosenthal/twitter-bootswatch-rails"
  s.licenses = ["MIT", "GPL-2"]
  s.post_install_message = "Important: You may need to add a javascript runtime to your Gemfile in order for bootstrap's LESS files to compile to CSS. \n\n**********************************************\n\nExecJS supports these runtimes:\n\ntherubyracer - Google V8 embedded within Ruby\n\ntherubyrhino - Mozilla Rhino embedded within JRuby\n\nNode.js\n\n**********************************************"
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.5"
  s.summary = "Twitter Bootstrap CSS toolkit for Rails 3.1+ Asset Pipeline with less-rails (no fluff - core only)"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, [">= 3.1"])
      s.add_runtime_dependency(%q<less-rails>, [">= 2.3"])
      s.add_runtime_dependency(%q<execjs>, [">= 1.4.0"])
      s.add_development_dependency(%q<rails>, [">= 3.1"])
      s.add_development_dependency(%q<therubyracer>, [">= 0.11.1"])
    else
      s.add_dependency(%q<railties>, [">= 3.1"])
      s.add_dependency(%q<less-rails>, [">= 2.3"])
      s.add_dependency(%q<execjs>, [">= 1.4.0"])
      s.add_dependency(%q<rails>, [">= 3.1"])
      s.add_dependency(%q<therubyracer>, [">= 0.11.1"])
    end
  else
    s.add_dependency(%q<railties>, [">= 3.1"])
    s.add_dependency(%q<less-rails>, [">= 2.3"])
    s.add_dependency(%q<execjs>, [">= 1.4.0"])
    s.add_dependency(%q<rails>, [">= 3.1"])
    s.add_dependency(%q<therubyracer>, [">= 0.11.1"])
  end
end
