=begin
Define a function that takes in two non-negative integers aaa and bbb and
returns the last decimal digit of a^b. Note that aaa and bbb may be very large!

For example, the last decimal digit of 9^7 is 9, since 9^7 = 47829699 The last
decimal digit of (2^200)^2^300, which has over 10^92 decimal digits, is 6. Also,
please take 0^0 to be 1.

You may assume that the input will always be valid.

Examples
last_digit(4, 1)                # returns 4
last_digit(4, 2)                # returns 6
last_digit(9, 7)                # returns 9
last_digit(10, 10 ** 10)        # returns 0
last_digit(2 ** 200, 2 ** 300)  # returns 6
=end

def last_digit(n1, n2)
  if n1 == 0 then 0 end
  if n2 == 0 then 1
  else
  case n1.digits.first
  	when 0 then 0
    when 1 then 1 
    when 2 then case n2 % 4
      when 0 then 6
      when 1 then 2
      when 2 then 4
      when 3 then 8
      end
    when 3 then case n2 % 4
      when 0 then 1
      when 1 then 3
      when 2 then 9
      when 3 then 7
      end
    when 4 then case n2 % 2
      when 1 then 4
      else 6
      end
    when 5 then 5
    when 6 then 6
    when 7 then case n2 % 4
      when 0 then 1
      when 1 then 7
      when 2 then 9
      when 3 then 3
      end
    when 8 then case n2 % 4
      when 0 then 6
      when 1 then 8
      when 2 then 4
      when 3 then 2
      end
    when 9 then n2 % 2 == 0 ? 1 : 9
   end
   end
end


# best solution

def last_digit(n1, n2)
  n1.pow(n2, 10)
end


# neater version of the logic I used...

def last_digit(n1, n2)
  return 1 if n2.zero?
  
  last_n1 = n1 % 10
  n2_mod  = (n2 % 4).zero? ? 4 : (n2 % 4)
  
  (last_n1 ** n2_mod) % 10
end