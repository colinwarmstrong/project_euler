# It can be seen that the number, 125874, and its double,
# 251748, contain exactly the same digits, but in a different
# order.
#
# Find the smallest positive integer, x, such that
# 2x, 3x, 4x, 5x, and 6x, contain the same digits.

number = 1

def multiples_contain_same_digits?(number)
  if (2..6).all? { |int| number.digits.sort == (int * number).digits.sort }
    true
  else
    false
  end
end

number += 1 until multiples_contain_same_digits?(number)

puts number
