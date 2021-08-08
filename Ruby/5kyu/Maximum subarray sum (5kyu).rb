=begin
The maximum sum subarray problem consists in finding the maximum sum of a
contiguous subsequence in an array or list of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
-- should be 6: [4, -1, 2, 1]

Easy case is when the list is made up of only positive numbers and the maximum
sum is the sum of the whole array. If the list is made up of only negative
numbers, return 0 instead.

Empty list is considered to have zero greatest sum. Note that the empty list or
array is also a valid sublist/subarray.
=end
 

# my solution

=begin
This method is a brute force method, testing all possible subarrays by using 2
nested loops.
=end


def max_seq(arr)
  max_so_far = 0
  max_current = 0
  arr.map do |x|
    max_current = [x, max_current + x].max
    max_so_far = [max_current, max_so_far].max
  end

  max_so_far
end

print max_seq([-2, 1, -3, 4, -1, 2, 1, -5, 4])






def max_sequence(arr)
  max = 0
  len = arr.length #9
  arr.map.with_index do |v, i|
  	ind = 0
  	while len - i >= ind
  	  arr[i..(i+ind)].reduce(:+) > max ? max = arr[i..(i+ind)].reduce(:+) : max
  	  ind += 1
  	end
  end
  max
end

# best solutions 

# Kadane's algorithm. Linear run time solution (quickest)
# https://www.youtube.com/watch?v=jnoVtCKECmQ


def max_sequence(arr)
  return 0 if arr.empty?

  max_ending_here = max_so_far = 0
  
  arr.each do |n|
    max_ending_here = [n, max_ending_here + n].max
    max_so_far = [max_so_far, max_ending_here].max
  end
  
  max_so_far
end


def max_sequence(arr)
  sum = 0
  max = 0
  for i in 0...arr.length
    sum += arr[i]
    
    if sum < 0
      sum = 0
    end
    
    if sum > max
      max = sum
    end
  end
  max
end


