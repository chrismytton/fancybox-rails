# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name        = "fancybox-rails"
  s.authors     = ["Chris Mytton"]
  s.email       = ["self@hecticjeff.net"]
  s.homepage    = "https://github.com/hecticjeff/fancybox-rails"

  s.summary     = "Use jquery.fancybox.js with rails 3.1."
  s.description = "Uses rails 3.1 asset pipelining to provide fancybox in rails 3.1 applications."
  s.files       = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version     = "0.0.1"
end
