RSpec.describe "Coder Tests" do
	before :all do
		Dir.chdir "#{ENV['HOME']}/Zdrive/cisc458/ptsrc"
	end
	
	after :all do
		Dir.foreach(Dir.pwd) { |file| File.delete(file) if File.extname(file) == ".out" }	
	end

	it 'writes substrings' do
		compare_outputs('writeSubstring')
	end

	it 'writes string variables' do
		compare_outputs('writeStringVariable')
	end

	it 'writes string literals' do
		compare_outputs('writeStringLiteral')
	end

	it 'writes string length' do
		compare_outputs('writeStringLength')
	end

	it 'writes concatenated strings' do
		compare_outputs('writeConcatenateString')
	end

	it 'writes string parameters' do
		compare_outputs('storeParmString')
	end

	it 'compares string equality' do
		compare_outputs('stringEquality')
	end

	it 'tests string subscripts' do
		compare_outputs('stringSubscripts')
	end

	it 'can create loops' do
		compare_outputs('loopTest')
	end

	it 'tests string subscripted with a variable' do
		compare_outputs('stringVariableSubscripts')
	end

	it 'tests long strings' do
		compare_outputs('longStrings')
	end

	describe 'example programs' do
		it 'can run the lunch program' do
			compare_outputs('lunch')
		end
	end
end

def actual_x86_code(test_case)
	`ssltrace \"ptc -t4 -o4 -L lib/pt unit_tests/semantic_tests/#{test_case}.pt\" coderlinux/coder.def -e`.gsub(' ', '').chomp
end

def expected_x86_code(test_case)
	`cat unit_tests/semantic_output_e/#{test_case}`.gsub(' ', '').chomp
end

def actual_output(test_case)
	`ptc -L lib/pt unit_tests/coder_tests/#{test_case}.pt`
	`./#{test_case}.out`
end

def expected_output(test_case)
	`cat unit_tests/coder_output/#{test_case}`
end

def compare_outputs(test_case)
	actual = actual_output(test_case)
	expected = expected_output(test_case)
	expect(actual).to eq(expected)
end
