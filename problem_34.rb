# 145 is a curious number,
# as 1! + 4! + 5! = 1 + 24 + 120 = 145.
#
# Find the sum of all numbers which are equal to
# the sum of the factorial of their digits.
#
# Note: as 1! = 1 and 2! = 2 are not sums they are not
# included.

def find_digit_factorial_sums_equal_to_number
  (3..40_585).find_all do |number|
    digit_factorial_sum_equal_to_number?(number)
  end
end

def digit_factorial_sum_equal_to_number?(number)
  number == number.digits.sum { |digit| factorial(digit) }
end

def factorial(number)
  (1..number).inject(:*) || 1
end

puts find_digit_factorial_sums_equal_to_number.sum
