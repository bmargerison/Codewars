=begin
Check to see if a string has the same amount of 'x's and 'o's. The method must
return a boolean and be case insensitive. The string can contain any char.
=end

# my solution


=begin
# Makes the string downcase, returns true if the number of x's is the same as
# the number of o's
=end

def XO(str)
  puts str.downcase.count('x') == str.downcase.count('o') ? true : false
end

#best solution

def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end

#the ternary operator already returns true/false!