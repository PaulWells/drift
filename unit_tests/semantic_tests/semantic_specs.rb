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

	describe "Example Programs" do
		it 'analyzes bubble.pt' do
			compare_outputs('bubble')
		end

		it 'analyzes the double.pt program' do
			compare_outputs('double')
		end

		it 'analyzes the stars.pt program' do
			compare_outputs('stars')
		end

		it 'analyzes the boxes.pt program' do
			compare_outputs('boxes')
		end

		it 'analyzes the bust.pt program' do
			compare_outputs('bust')
		end

		it 'analyzes the primes.pt program' do
			compare_outputs('primes')
		end

		it 'analyzes the pascal.pt program' do
			compare_outputs('pascal')
		end

		it 'analyzes the lunch.pt program' do
			compare_outputs('lunch')
		end

		it 'analyzes the francais.pt program' do
			compare_outputs('francais')
		end
	end

	it 'recognizes switch statements' do
		actual = fetch_actual('simpleSwitch')
		expected = fetch_expected('simpleSwitch')

		expect(expected).to eq(actual)
	end

	it 'no longer parses pt programs' do
		actual = fetch_actual('primes-pt')

		expect(actual).to eq('')
	end

	it 'handles string assignment' do
		compare_outputs('string-assign')
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
