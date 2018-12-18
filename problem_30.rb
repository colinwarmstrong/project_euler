# Surprisingly there are only three numbers that
# can be written as the sum of fourth powers of
# their digits:
#
# 1634 = 1^4 + 6^4 + 3^4 + 4^4
# 8208 = 8^4 + 2^4 + 0^4 + 8^4
# 9474 = 9^4 + 4^4 + 7^4 + 4^4
#
# As 1 = 14 is not a sum it is not included.
#
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
#
# Find the sum of all the numbers that can be written as
# the sum of fifth powers of their digits.

def find_valid_fifth_powers
  (4_150..194_979).find_all { |number| valid_fifth_power?(number) }
end

def valid_fifth_power?(number)
  number == number.digits.sum { |digit| digit**5 }
end

puts find_valid_fifth_powers.sum
