require 'rake/testtask'

require 'gaee'
require 'gaee/cli'

# Test this Gem

Rake::TestTask.new do |t|
  t.libs << 'test'
end

# Excited easter-egg

desc 'Print hello'
task :hello do
  puts '😀 Got Ha?'
end

# Display GeekApk Version

desc 'Print library version'
task :version do
  puts Gaee::VERSION
end

# Print all models and model methods

desc 'Print Models&Methods'
task :model do
  GCL.print_models
end

desc 'Build this Gem'
task :build do
  system 'gem build gaee.gemspec'
end

desc 'Install this Gem'
task install: :build do
  system "gem install gaee-#{Gaee::VERSION}.gem"
end

desc 'Install this Gem(as root)'
task sudoinstall: :build do
  system "sudo gem install gaee-#{Gaee::VERSION}.gem" if Process.uid != 0
end

desc 'Clean up'
task :clean do
  File.delete "gaee-#{Gaee::VERSION}.gem"
  rescue
end

desc 'Run tests'
task default: :test
