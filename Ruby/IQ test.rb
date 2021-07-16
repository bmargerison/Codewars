#instructions
=begin
Bob is preparing to pass IQ test. The most frequent task in this test is to find
out which one of the given numbers differs from the others. Bob observed that
one number usually differs from the others in evenness. Help Bob — to check his
answers, he needs a program that among the given numbers finds one that is
different in evenness, and return a position of this number.

Keep in mind that your task is to help Bob solve a real IQ test, which means
indexes of the elements start from 1 (not 0)
=end

#my solution
=begin
The function will return the index in an array of the only odd number or the
only even number. The function assumes there is only the possibility of only
1 even or 1 odd number in the array.
=end

def iq_test(numbers)
  numbers = numbers.split()
  numbers.collect! { |x| x.to_i }
  even_or_odd = numbers.collect! { |x| x % 2 }
  if even_or_odd.reduce(:+) == 1
  	even_or_odd.index(1) + 1
  else
  	even_or_odd.index(0) + 1
  end
end

#best solution

def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end