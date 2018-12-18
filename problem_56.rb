# A googol (10100) is a massive number: one followed by
# one-hundred zeros; 100100 is almost unimaginably
# large: one followed by two-hundred zeros. Despite their
# size, the sum of the digits in each number is only 1.
#
# Considering natural numbers of the form, ab,
# where a, b < 100, what is the maximum digital sum?

numbers = []

(1...100).each do |integer|
  (1...100).each do |power|
    numbers << integer**power
  end
end

digit_sums = []

numbers.each do |number|
  digit_sums << number.digits.sum
end

puts digit_sums.max
