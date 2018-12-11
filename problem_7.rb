# By listing the first six prime numbers:
# 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10001st prime number?

require 'prime'

solution = 0
i = 1

Prime.each do |prime|
  if i == 10_001
    solution = prime
    break
  else
    i += 1
  end
end

puts solution
