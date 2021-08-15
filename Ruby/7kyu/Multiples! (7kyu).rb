=begin
Make a program that takes a value (x) and returns "Bang" if the number is
divisible by 3, "Boom" if it is divisible by 5, "BangBoom" if it divisible by 3
and 5, and "Miss" if it isn't divisible by any of them. Note: Your program
should only return one value

Ex: Input: 105 --> Output: "BangBoom" Ex: Input: 9 --> Output: "Bang" Ex:Input:
25 --> Output: "Boom"
=end

# my solution

def multiple(x)
  # control flow
  # case when statement best due to several different potential outputs
  # BangBoom must come first in flow
  case
    when x % 3 == 0 && x % 5 == 0 then "BangBoom"
    when x % 3 == 0 then "Bang"
    when x % 5 == 0 then "Boom"
    else "Miss"
  end
end

# best solution

def multiple(x)
  x%15 == 0 ? 'BangBoom' : x%5 == 0 ? 'Boom' : x%3 == 0 ? 'Bang' : 'Miss'
end