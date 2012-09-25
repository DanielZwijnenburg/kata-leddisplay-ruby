class LedDisplay

		Numbers = [
			[" _ ", 
			 "| |", 
			 "|_|"], 
			["   ", 
			 "  |",
			 "  |"], 
			[" _ ", 
			 " _|", 
			 "|_ "], 
			[" _ ",
			 " _|",
			 " _|"], 
			["   ",
			 "|_|",
			 "  |"], 
			[" _ ",
			 "|_ ",
			 " _|"], 
			[" _ ",
			 "|_ ",
			 "|_|"], 
			[" _ ",
			 "  |",
			 "  |"], 
			[" _ ",
			 "|_|",
			 "|_|"], 
			[" _ ",
			 "|_|",
			 " _|"]]

	def convert(number)
		result = 3.times.inject([]) do |array, lineNr|
			digits = number.to_s.chars.inject([]) { |array, digit| array << digit.to_i }
			line = digits.inject([]) { |array, digit| array << Numbers[digit][lineNr] }
			array << line.join(" ")
		end.join("\n")
	end
end