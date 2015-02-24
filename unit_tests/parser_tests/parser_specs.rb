RSpec.describe "Parser Tests" do
	before :all do
		Dir.chdir "/cas/student/9hwt/Zdrive/cisc458/ptsrc"
	end

	it 'removesOldTokens' do
		actual_output = fetch_actual('removesOldTokens')
		expected_output = fetch_expected('removesOldTokens')
		expect(actual_output).to eq(expected_output)
	end	
end

def fetch_actual(test_case)
	`ssltrace \"ptc -t2 -o2 -L lib/pt unit_tests/parser_tests/#{test_case}.pt\" parser/parser.def -e`.gsub(' ', '').chomp
end

def fetch_expected(test_case)
	`cat unit_tests/parser_output_e/#{test_case}OutputE`.gsub(' ', '').chomp
end
