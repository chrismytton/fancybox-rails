# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "fancybox-rails"
  s.authors     = ["Chris Mytton", "Les Hill", "Dennis Reimann", "Mattias Svedhem", "Greg Reinacker"]
  s.email       = ["chrismytton@gmail.com"]
  s.homepage    = "https://github.com/chrismytton/fancybox-rails"

  s.summary     = "Use FancyBox with the Rails asset pipeline"
  s.description = "This gem provides jQuery FancyBox for your Rails application."
  s.files       = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.version     = "0.3.1"

  s.add_dependency "railties", ">= 3.1.0"
end
