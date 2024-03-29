require 'pty'
require 'expect'

RSpec.describe "Coder Tests" do
	before :all do
		Dir.chdir "#{ENV['HOME']}/Zdrive/cisc458/ptsrc"
	end
	
	after :all do
		Dir.foreach(Dir.pwd) { |file| File.delete(file) if File.extname(file) == ".out" }	
	end

	describe 'string type' do
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

		it 'can handle empty strings' do
			compare_outputs('emptyString')
		end
	end

	it 'can create loops' do
		compare_outputs('loopTest')
	end

	it 'can ord strings' do
		compare_outputs('stringOrd')
	end

	it 'can chr ints' do
		compare_outputs('writeChar')
	end


	describe 'switch statements' do
		it 'can handle switch' do
			compare_outputs('switch')
		end

		it 'can hangle switch defaults' do
			compare_outputs('switchDefault')
		end
	end

	describe 'if statements' do
		it 'can handle if' do
			compare_outputs('if')
		end

		it 'can handle else if' do
			compare_outputs('elseIf')
		end

		it 'can handle else' do
			compare_outputs('else')
		end
	end

	describe 'example programs' do
		it 'can run the bubble program' do
			compare_outputs('bubble')
		end

		it 'can run the lunch program' do
			compare_outputs('lunch')
		end

		it 'can run the primes program' do
			compare_outputs('primes')
		end

		it 'can run the pascal program' do
			compare_outputs('pascal')
		end

		it 'can run the stars program' do
			compare_outputs('stars')
		end
	
		it 'can run the bust program' do
			output = ''
			`ptc -L lib/pt unit_tests/coder_tests/bust.pt`
			PTY.spawn("./bust.out") do |reader, writer|
  				reader.expect(/Enter player name/, 5)
  				writer.puts('UniqueName')
				reader.expect(/What does/, 5)
				writer.puts('1')
				while msg = reader.gets do
					output +=  msg
					break if msg.match(/New shuffle/)
				end
			end	
			expect(output).to match(/UniqueName/)
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
