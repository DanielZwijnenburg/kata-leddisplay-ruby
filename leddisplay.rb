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
		result = []

		3.times do |lineNr|
			digits = number.to_s.chars.inject([]) { |array, digit| array << digit.to_i }
			line = digits.inject([]) { |array, digit| array << Numbers[digit][lineNr] }
			result << line.join(" ")
		end

		result.join("\n")
	end
end