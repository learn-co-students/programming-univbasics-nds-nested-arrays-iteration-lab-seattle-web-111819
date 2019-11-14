def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  row = 0
  strings = []
  while row < src.count do
    strings << "I love #{src[row][0]} and #{src[row][1]} on my pizza"
    row += 1
  end
  return strings
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  row = 0
  arr = []
  while row < src.count do
    arr << src[row].sort[1]
    row += 1
  end
  return arr
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  row = 0
  tot = 0
  while row < src.count do
    if src[row][0] % 2 + src[row][1] % 2 == 0
      tot += src[row][0] + src[row][1]
    end
    row += 1  
  end
  return tot
end