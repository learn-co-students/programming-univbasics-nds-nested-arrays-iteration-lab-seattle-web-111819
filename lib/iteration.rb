def join_ingredients(src)
  new_array = []
  i = 0
  while i < src.length do 
    new_array.push("I love #{src[i][0]} and #{src[i][1]} on my pizza")
    i += 1
  end
  new_array
end

def find_greater_pair(src)
  
  new_array = []
  i = 0
  while i < src.length do 
    new_array.push(src[i].max)
    i += 1
  end
  new_array
end

def total_even_pairs(src)
  sum = 0
  i = 0 
  while i < src.length do
  if (src[i][0] % 2 == 0) && (src[i][1] % 2 == 0)
    sum += (src[i][0] + src[i][1])
   end
   i += 1 
 end 
 return sum
end
  
  
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

