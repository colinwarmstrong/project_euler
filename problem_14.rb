# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem),
# it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

require 'pry'

i = 1
sequences = []

until i == 1000000 do
  number = i
  sequence = []
  until number == 1
    if number.even?
      sequence << number
      number /= 2
    else
      sequence << number
      number = (number * 3 + 1)
    end
  end
  sequence << 1
  sequences << sequence
  i += 1
end

longest_sequence = sequences.max_by { |sequence| sequence.length }

puts longest_sequence.first
