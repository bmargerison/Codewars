=begin
Complete the method which accepts an array of integers, and returns one of the 
following:

    "yes, ascending" - if the numbers in the array are sorted in an ascending 
    order
    "yes, descending" - if the numbers in the array are sorted in a descending 
    order
    "no" - otherwise

You can assume the array will always be valid, and there will always be one 
correct answer.
=end

#my solution
def is_sorted_and_how(arr)
  arr.sort == arr ? "yes, ascending" : arr.sort.reverse == arr ? "yes, descending" : "no"
end

#best solution
def is_sorted_and_how(arr)
    # your code here
    arr == arr.sort ? 'yes, ascending' : arr == arr.sort.reverse ? 'yes, descending' : 'no'
    
      
end