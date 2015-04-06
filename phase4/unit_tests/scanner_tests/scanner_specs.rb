RSpec.describe "Scanner Tests" do
	before :all do
		Dir.chdir "/cas/student/9hwt/Zdrive/cisc458/ptsrc"
	end

	it 'Adds character classes' do
  	actual_output = fetch_actual('characterClassesAdded')
  	expected_output = fetch_expected('characterClassesAdded')
  	expect(actual_output).to eq(expected_output)
	end

	it 'Replaces character classes' do
		actual_output = fetch_actual('characterClassesReplaced')
  	expected_output = fetch_expected('characterClassesReplaced')
  	expect(actual_output).to eq(expected_output)
	end

	it 'Identifies comments' do
		actual_output = fetch_actual('commentsLine')
  	expected_output = fetch_expected('commentsLine')
  	expect(actual_output).to eq(expected_output)
	end

	it 'Adds keywords' do
		actual_output = fetch_actual('keywordsAdded')
  	expected_output = fetch_expected('keywordsAdded')
  	expect(actual_output).to eq(expected_output)
	end

	it 'Removes keywords' do
		actual_output = fetch_actual('keywordsRemoved')
  	expected_output = fetch_expected('keywordsRemoved')
  	expect(actual_output).to eq(expected_output)
	end

	it 'Adds syntax tokens' do
		actual_output = fetch_actual('syntaxTokensAdded')
  	expected_output = fetch_expected('syntaxTokensAdded')
  	expect(actual_output).to eq(expected_output)
	end

	it 'Removes syntax tokens' do
		actual_output = fetch_actual('syntaxTokensRemoved')
  	expected_output = fetch_expected('syntaxTokensRemoved')
  	expect(actual_output).to eq(expected_output)
	end
end

def fetch_actual(test_case)
	`ssltrace \"ptc -o1 -t1 -L lib/pt unit_tests/scanner_tests/#{test_case}.pt\" parser/scan.def -e`.gsub(' ', '').chomp
end

def fetch_expected(test_case)
	`cat unit_tests/scanner_output_e/#{test_case}OutputE`.gsub(' ', '').chomp
end
