RSpec.describe "Parser Tests" do
	before :all do
		Dir.chdir "#{ENV['HOME']}/Zdrive/cisc458/ptsrc"
	end

	it 'adds the extern keyword' do
		actual_output = fetch_actual('addsExtern')
		expect(actual_output).to match('.sExtern')
	end

	it 'adds let declarations' do
		compare_outputs('addsLet')
	end

	it 'adds var declarations' do
		compare_outputs('addsVar')
	end

	it 'adds type declarations' do
		compare_outputs('addsType')
	end
	
	it 'tests simple if statements' do
		compare_outputs('simpleIf')
	end

	it 'updates the if syntax' do
		compare_outputs('updatesIf')
	end

	it 'adds elsif syntax' do
		compare_outputs('addsElsif')
	end
	
	it 'adds double elsif syntax' do
		compare_outputs('addsDoubleElsif')
	end
	
	it 'adds nested if' do
		compare_outputs('addsNestedIf')
	end
end

def fetch_actual(test_case)
	`ssltrace \"ptc -t2 -o2 -L lib/pt unit_tests/parser_tests/#{test_case}.pt\" parser/parser.def -e`.gsub(' ', '').chomp
end

def fetch_expected(test_case)
	`cat unit_tests/parser_output_e/#{test_case}`.gsub(' ', '').chomp
end

def compare_outputs(test_case)
	actual_output = fetch_actual(test_case)
	expected_output = fetch_expected(test_case)
	expect(actual_output).to eq(expected_output)
end
