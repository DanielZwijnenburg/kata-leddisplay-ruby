require "test/unit"
require './leddisplay.rb'

class LedDisplayTest < Test::Unit::TestCase

    #      _   _
	#   |  _|  _|
	#   | |_   _|
	def test_should_convert_zero
		@d = LedDisplay.new
		@result = @d.convert 0
		assert_equal " _ \n| |\n|_|", @result
	end

	def test_should_convert_one
		@d = LedDisplay.new
		@result = @d.convert 1
		assert_equal "   \n  |\n  |", @result
	end

	def test_should_convert_two
		@d = LedDisplay.new
		@result = @d.convert 2
		assert_equal " _ \n _|\n|_ ", @result
	end

	def test_should_convert_three
		@d = LedDisplay.new
		@result = @d.convert 3
		assert_equal " _ \n _|\n _|", @result
	end

	def test_should_convert_two_digit_number
		@d = LedDisplay.new
		@result = @d.convert 11
		assert_equal "       \n  |   |\n  |   |", @result
	end

end