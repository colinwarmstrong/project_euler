# 2520 is the smallest number that can be divided by
# each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?

multiplier = 1
number = 20
dividers = [11, 12, 13, 14, 15, 16, 17, 18, 19]

def divisible_by_numbers_1_to_20?(number, dividers)
  if dividers.all? { |int| number % int == 0 }
    return true
  else
    return false
  end
end

until divisible_by_numbers_1_to_20?(number, dividers) do
  multiplier += 1
  number = multiplier * 20
end

puts number
