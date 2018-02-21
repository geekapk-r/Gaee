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
  puts '😀 Got Frogn?'
end

# Display Gaee Version
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

desc 'Format code'
task :fmt do
  system 'rufo bin/ test/ lib/ gaee.gemspec'
end

desc 'Rubocop Lint'
task :lint do
  system 'rubocop'
end

desc 'Clean up'
task :clean do
  begin
    File.delete "gaee-#{Gaee::VERSION}.gem"
  rescue Errno::ENOENT
    puts 'Nothing to do.'
  end
end

desc 'Run tests'
task default: :test
