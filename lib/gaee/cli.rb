##
# GeekApk CLI Program

require 'gaee'

begin
  require 'awesome_print' # ap required for pretty print
rescue LoadError
  warn 'Install awesome_print gem first.'
  exit 1
end

# GeekApk CLI module
module GCL; end

# Main function
def GCL.main(args = ARGV); end

# Print all models and its methods
def GCL.print_models
  mods.each do |m|
    puts "Model #{m.name}".yellow
    sm = m.singleton_methods ms = m.instance_methods(false)
    [['Class', sm], ['Instance', ms]].each do |i|
      puts "#{i[0]} Methods".red
      ap i[1] if i[1].any?
    end
  end
end

# Returns model classes
def GCL.mods
  Gaee::MODELS.map { |s| Gaee.const_get s }
end
