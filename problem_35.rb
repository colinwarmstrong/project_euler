# The number, 197, is called a circular prime because
# all rotations of the digits: 197, 971, and 719,
# are themselves prime.
#
# There are thirteen such primes below 100:
# 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
#
# How many circular primes are there below one million?

require 'prime'
require 'pry'

def find_circular_primes(upper_limit)
  circular_primes = []
  Prime.each(upper_limit) do |prime|
    circular_primes << prime if circular?(prime)
  end
  circular_primes
end

def circular?(prime)
  prime_digits = digits(prime)
  rotations = []
  prime_digits.length.times do |index|
    rotations << prime_digits.rotate(index).join.to_i
  end
  rotations.all?(&:prime?)
end

def digits(number)
  number.to_s.chars.map(&:to_i)
end

puts find_circular_primes(999_999).count
