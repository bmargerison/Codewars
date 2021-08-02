=begin
Create a function (or write a script in Shell) that takes an integer as an
argument and returns "Even" for even numbers or "Odd" for odd numbers.
=end

# my solution

def even_or_odd(number)
  number % 2 == 0 ? "Even" : "Odd"
end

# best solution

def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end

