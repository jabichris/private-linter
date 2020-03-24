require_relative '../lib/rules'
require_relative '../lib/emptylineendoffile'

def define_rules
  array = []
  array << EmptyLineEndOfFile.new('No empty line at End Of File')
  array
end

def display_report
  Rule.give_report.each do |line|
    print "#{line[0]} "
    print "L: #{line[1]} " unless line[1].zero?
    print "#{line[2]} "
    print "(#{line[3]}) \n\n"
  end
  end

input_array = ARGV
files = []
if input_array.length.zero?
  files = Dir.glob('**/**.rb')
  if files.count.zero?
    puts 'No file was found'
    exit false
  end
else
  file_name = input_array[0]
  unless File.exist?(file_name)
    puts "ERROR: File #{input_array[0]} doesn't exist"
    exit false
  end
  files << file_name
end

rules = define_rules
files.each do |f_name|
  file = File.open(f_name)
  file_data = file.readlines
  file.close
  rules.each { |rule| rule.parse(file_data, f_name) }
end

display_report
