# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
#
# Find the last ten digits of the series,
# 1^1 + 2^2 + 3^3 + ... + 10001000.

sum = (1..1000).sum do |int|
  int**int
end

puts sum.to_s[-10..-1]
