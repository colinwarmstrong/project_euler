# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

number = 600851475143
possible_solutions = []

Prime.each do |prime|
  break if number == 1
  quotient, remainder = number.divmod(prime)
  next if remainder != 0
  possible_solutions << prime
  number = quotient
end

puts possible_solutions.last
