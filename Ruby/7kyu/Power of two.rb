=begin
Complete the function power_of_two/powerOfTwo (or equivalent, depending on your
language) that determines if a given non-negative integer is a power of two. 
From the corresponding Wikipedia entry:

    a power of two is a number of the form 2n where n is an integer, i.e. the 
    result of exponentiation with number two as the base and integer n as the 
    xponent.

You may assume the input is always valid.
=end

#my solution
#this one was very annoying... floats can't handle large numbers, 
#1208925819614629174706171.to_f rounds the last digit to a 6 for example. I 
#managed to do it using a different Object
require 'bigdecimal'

def power_of_two?(x)
  x = BigDecimal(x)
  return true if x == 2
  return false if x < 2
  power_of_two?(x/2)
end

#best solution
#it made me chuckle how simple this could have been...
def power_of_two?(x)
  x > 0 && x & (x - 1) == 0
end

