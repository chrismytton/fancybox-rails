# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "fancybox-rails"
  s.authors     = ["Chris Mytton", "Les Hill", "Dennis Reimann"]
  s.email       = ["self@hecticjeff.net"]
  s.homepage    = "https://github.com/hecticjeff/fancybox-rails"

  s.summary     = "Use FancyBox with Rails 3.1+"
  s.description = "This gem provides jQuery FancyBox for your Rails 3.1 application."
  s.files       = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md"]
  s.version     = "0.2.1"

  s.add_dependency "railties", ">= 3.1.0"
end
