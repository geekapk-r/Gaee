require 'rake/testtask'
require 'gaee'

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
end

desc 'Run tests'
task default: :test
