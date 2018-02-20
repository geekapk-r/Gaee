##
# GeekApk CLI Program

require 'gaee'

begin
  require 'awesome_print' # ap required for pretty print
rescue LoadError
  $stderr.puts 'Install awesome_print gem first.'
  exit 1
end

# GeekApk CLI module
module GCL; end

# Main function
def GCL.main(args = ARGV)
end

# Print all models and its methods
def GCL.print_models
  Gaee::MODELS.each do |m|
    puts "Model #{m.name}".yellow
    if m.singleton_methods.any?
      puts "Class Methods".red
      ap m.singleton_methods
    end
    if m.instance_methods(false).any?
      puts "Instance Methods".red
      ap m.instance_methods(false)
    end
  end
end
