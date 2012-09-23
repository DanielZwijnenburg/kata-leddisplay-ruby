class LedDisplay 

	def initialize
		@numbers = [
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
			 " _|"]]
	end

	def convert(number)
		if number < 10
			return @numbers[number].join("\n")
		else
			# every line:
			# 	every number
			result = []
			(0..2).each do |line|
				digits = number.to_s.split('').map { |digit| digit.to_i }
				lineArray = []
				digits.each do |digit|
					lineArray << @numbers[digit][line]
				end
				result << lineArray.join(" ")
			end
			return result.join("\n")
		end
	end

end