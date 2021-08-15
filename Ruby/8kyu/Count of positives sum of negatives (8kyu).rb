=begin
Given an array of integers.

Return an array, where the first element is the count of positives numbers and
the second element is sum of negative numbers.

If the input array is empty or null, return an empty array.
=end

# my solutions

def count_positives_sum_negatives(lst)
  # initialise count of positive numbers
  positive_count = 0
  # intitialise count of negative numbers
  negative_sum = 0
  # iterative through array
  # add 1 for each positive number
  # add negative number to sum
  lst.each do |x|
  	x > 0 ? positive_count += 1 : negative_sum += x
  end
  # retrun an array 
  lst.empty? ? [] : [positive_count, negative_sum]
end



def count_positives_sum_negatives(lst)
  # alternatively, intialise an array and push results into array
  arr = [0,0]
  lst.each do |x|
  	x > 0 ? arr[0] += 1 : arr[1] += x
  end
  lst.empty? ? [] : arr
end