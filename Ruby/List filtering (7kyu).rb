=begin
In this kata you will create a function that takes a list of non-negative
integers and strings and returns a new list with the strings filtered out.

Example
filter_list([1,2,'a','b']) == [1,2]
filter_list([1,'a','b',0,15]) == [1,0,15]
filter_list([1,2,'aasf','1','123',123]) == [1,2,123]
=end

# my solution

def filter_list(l)
  l.select { |x| x.is_a? Integer }
end

# best solution

def filter_list(l)
  l.reject { |x| x.is_a? String }
end

=begin
a black list is better pratice "I disagree. If the requirements were to change,
it's more likely that the array will have to accomodate some other type in
addition to integers while still filtering out strings. So it's best that the
method only knows that it has to reject strings."
=end