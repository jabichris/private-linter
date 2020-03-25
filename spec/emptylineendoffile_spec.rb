require_relative '../lib/rules.rb'
require_relative '../lib/emptylineendoffile'

file_name = './test_example/test_example.rb'
exit false unless File.exist?(file_name)
file = File.open(file_name)
file_data = file.readlines.map(&:chomp)
file.close

RSpec.describe EmptyLineEndOfFile do
  rule_obj = EmptyLineEndOfFile.new('No empty line at EOF')
  describe '#parse' do
    it 'Checks file for lack of EOF empty line' do
      expect(rule_obj.parse(file_data, file_name)).to be true
    end
  end
end
