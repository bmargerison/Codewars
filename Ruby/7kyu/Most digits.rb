=begin
Find the number with the most digits.

If two numbers in the argument array have the same number of digits, return the
first one in the array.
=end 

#my solution
def find_longest(arr)
  arr.map(&:to_s).max_by(&:length).to_i
end

#best solution
#it seems I overcomplicated it slightly really
def find_longest(arr)
  arr.max_by { |num| num.to_s.size }
end