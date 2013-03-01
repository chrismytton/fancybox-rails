# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "fancybox-rails"
  s.authors     = ["Chris Mytton", "Les Hill", "Dennis Reimann", "Vik Ewoods"]
  s.email       = ["self@hecticjeff.net"]
  s.homepage    = "https://github.com/hecticjeff/fancybox-rails"

  s.summary     = "Use FancyBox with Rails 3.1+"
  s.description = "This gem provides jQuery FancyBox for your Rails 3.1 application."
  s.files       = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md"]
  s.version     = "0.1.5"

  s.add_dependency "railties", ">= 3.1.0"
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rails",   ">= 3.1.0"
end
