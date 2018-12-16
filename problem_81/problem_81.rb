# In the 5 by 5 matrix below, the minimal path sum from the
# top left to the bottom right, by only moving to the right
# and down, is indicated in bold red and is equal to 2427.
#
# Find the minimal path sum, in matrix.txt (right click
# and "Save Link/Target As..."), a 31K text file
# containing a 80 by 80 matrix, from the top left to
# the bottom right by only moving right and down.
require 'pry'

matrix = []

File.open('problem_81/p081_matrix.txt', 'r') do |file|
  file.each_line do |line|
    matrix << line.split(',').map(&:to_i)
  end
end

sum = 0
position = [0, 0]

def right_value(matrix, position)
  matrix[position.first][position.last + 1]
end

def down_value(matrix, position)
  matrix[position.first + 1][position.last]
end

until position == [79, 79]
  current_value = matrix[position.first][position.last]
  sum += current_value
  if position.first == 79
    position = [position.first, position.last + 1]
  elsif position.last == 79
    position = [position.first + 1, position.last]
  elsif right_value(matrix, position) <= down_value(matrix, position)
    position = [position.first, position.last + 1]
  elsif right_value(matrix, position) >= down_value(matrix, position)
    position = [position.first + 1, position.last]
  end
end

p sum
