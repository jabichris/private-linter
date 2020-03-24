require_relative '../lib/rules.rb'
require_relative '../lib/emptylineendoffile'

file_name = '../lib/emptylineendoffile.rb'
exit false unless File.exist?(file_name)
file = File.open(file_name)
file_data = file.readlines.map(&:chomp)
file.close

RSpec.describe EmptyLineEndOfFile do
  rule_obj = EmptyLineEndOfFile.new('No empty line at EOF')
  describe '#parse' do
    it 'Checks file 2 for lack of EOF empty line' do
      expect(rule_obj.parse(file_data, file_name)).to be true
    end
    it 'Adds a report line to the class attribute report' do
      expect(Rule.give_report.count).to eql 10
    end
  end
end
