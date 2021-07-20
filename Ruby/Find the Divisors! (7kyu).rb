=begin
Create a function named divisors/Divisors that takes an integer n > 1 and
returns an array with all of the integer's divisors(except for 1 and the number
itself), from smallest to largest. If the number is prime return the string
'(integer) is prime' (null in C#) (use Either String a in Haskell and
Result<Vec<u32>, String> in Rust).
=end

# my solution

def divisors(n)
  numbers = []
  for i in 2...n
  	next if n % i != 0
  	numbers << i
  end
  numbers.empty? ? "#{n} is prime" : numbers
end

# best solution

def divisors(n)
  vals = (2..n/2).select{|x| n%x==0}
  vals.empty? ? "#{n} is prime" : vals
end
