=begin
Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that
checks whether the two arrays have the "same" elements, with the same
multiplicities. "Same" means, here, that the elements in b are the elements in a
squared, regardless of the order.
=end

# my solution

def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  array1.sort == array2.sort.map! { |x| Math.sqrt(x) }
end

# best solution

def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map {|v| v ** 2} == array2.sort
end


