RSpec.describe "Semantic Tests" do
	before :all do
		Dir.chdir "#{ENV['HOME']}/Zdrive/cisc458/ptsrc"
	end

	it 'recognize loop syntax' do
		actual = fetch_actual('loopSyntax')
		
		expect(actual).to match('tLoopEnd')
		expect(actual).to match('tLoopBegin')
		expect(actual).to match('tLoopTest')
		compare_outputs('loopSyntax')
	end

	it 'parses bubble.pt' do
		compare_outputs('bubble')
	end

	it 'recognizes switch statements' do
		actual = fetch_actual('simpleSwitch')
		expected = fetch_expected('simpleSwitch')

		expect(actual).to match(expected)
	end
end

def fetch_actual(test_case)
	`ssltrace \"ptc -t3 -o3 -L lib/pt unit_tests/semantic_tests/#{test_case}.pt\" semantic/semantic.def -e`.gsub(' ', '').chomp
end

def fetch_expected(test_case)
	`cat unit_tests/semantic_output_e/#{test_case}`.gsub(' ', '').chomp
end

def compare_outputs(test_case)
	actual_output = fetch_actual(test_case)
	expected_output = fetch_expected(test_case)
	expect(actual_output).to eq(expected_output)
end
