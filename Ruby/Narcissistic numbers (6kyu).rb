=begin
A Narcissistic Number is a positive number which is the sum of its own digits,
each raised to the power of the number of digits in a given base. In this Kata,
we will restrict ourselves to decimal (base 10).

Your code must return true or false depending upon whether the given number is a
Narcissistic number in base 10.

Error checking for text strings or other invalid inputs is not required, only
valid positive non-zero integers will be passed into the function.
=end

# my solution

def narcissistic?(value)
  digits = value.to_s.chars.collect(&:to_i)
  digits_raised = digits.collect { |x| x ** digits.count }
  if digits_raised.reduce(0, :+) == value
  	true
  else
  	false
  end
end

# best solution

def narcissistic?( value )
  value == value.to_s.chars.map { |x| x.to_i**value.to_s.size }.reduce(:+)
end