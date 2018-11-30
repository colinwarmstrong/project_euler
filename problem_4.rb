# A palindromic number reads the same both ways. The largest
# palindrome made from the product of two 2-digit numbers is
# 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of
# two 3-digit numbers.
require 'pry'

products = (100..999).map do |int_1|
  (100..999).map do |int_2|
    int_1 * int_2
  end
end.flatten.uniq

palindromes = products.find_all do |product|
  product == product.to_s.reverse.to_i
end

puts palindromes.max
