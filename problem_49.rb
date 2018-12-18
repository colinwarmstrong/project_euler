# The arithmetic sequence, 1487, 4817, 8147, in which
# each of the terms increases by 3330, is unusual in
# two ways: (i) each of the three terms are
# prime, and, (ii) each of the 4-digit numbers are
# permutations of one another.
#
# There are no arithmetic sequences made up of three
# 1-, 2-, or 3-digit primes, exhibiting this property,
# but there is one other 4-digit increasing sequence.
#
# What 12-digit number do you form by concatenating
# the three terms in this sequence?

require 'prime'

primes = (1488...9999).find_all(&:prime?)

primes.each do |prime1|
  primes.find_all { |prime2| prime2 > prime1 }.each do |prime2|
    primes.find_all { |prime3| prime3 > prime2 }.each do |prime3|
      next unless prime3 - prime2 == prime2 - prime1 &&
                  prime1.digits.sort == prime2.digits.sort &&
                  prime2.digits.sort == prime3.digits.sort &&
                  prime3.digits.sort == prime1.digits.sort

      puts prime1.to_s + prime2.to_s + prime3.to_s
      exit
    end
  end
end
