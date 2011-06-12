# encoding: UTF-8
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

# For checking remote fancybox version.
require 'nokogiri'
require 'open-uri'

# Path to atom feed with fancybox updates.
$fancybox_feed = "http://code.google.com/feeds/p/fancybox/downloads/basic"

Bundler::GemHelper.install_tasks

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task :default => :test

namespace :fancybox do
  desc "Get the local and remote fancybox versions."
  task :version do
    local = local_version
    remote = remote_version

    puts "local: v#{local}"
    puts "remote: v#{remote}"

    if local != remote
      warn "\nthere is a newer remote version available"
    end
  end
end

# Get the current local version of the vendored fancybox library.
#
# Returns the String representing the local version.
def local_version
  `grep ' * Version' vendor/assets/javascripts/jquery.fancybox.js | \
  cut -d ' ' -f 4`.chomp
end

# Get the current version of the remote version of the library. Uses
# nokogiri and open-uri to grab the atom feed from google code, then
# parses the version out of the title.
#
# Returns the String representing the remote version.
def remote_version
  doc = Nokogiri::HTML(open($fancybox_feed))
  doc.css('entry:first title').text.match(/\d\.\d\.\d/)[0]
end
