require 'rake'
require File.dirname(__FILE__) + "/lib/relevant/datetime.rb"

require 'rspec/core/rake_task'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.version = Relevant::Datetime::Version
    gemspec.name = "relevant-datetime"
    gemspec.summary = "Datetime widget for Relevant"
    gemspec.description = "Check the time"
    gemspec.email = "opensource@thinkrelevance.com"
    gemspec.homepage = "http://github.com/relevance/relevant-datetime"
    gemspec.authors = ["Jared Pace", "Rob Sanheim"]
    gemspec.add_dependency "relevant-widget", "~> 0.0.7"
    gemspec.add_development_dependency "rspec", "~> 2.0.0.rc"
  end
  Jeweler::GemcutterTasks.new
  
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

task :full_release => [:check_dependencies, :spec, :release]