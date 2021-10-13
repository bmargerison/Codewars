=begin
Given n, take the sum of the digits of n. If that value has more than one digit,
continue reducing in this way until a single-digit number is produced. The input
will be a non-negative integer.
  return num if n.to_s.length == 1
  num += 
  n.to_s.length -= 1
=end


#my solution
def digital_root(n)
  num = n.to_s.split('').map { |x| x.to_i }.reduce(:+)
  n.to_s.length == 1 ? num : digital_root(num)
end

#best solution
#same logic, .digits feels like cheating, but its very clean code
def digital_root(n)
  n < 10 ? n : digital_root(n.digits.sum)
end

#very similar to mine, just some nifty tricks in there
def digital_root(n)
  n < 10 ? n : digital_root(n.to_s.split(//).map(&:to_i).inject(:+));
end