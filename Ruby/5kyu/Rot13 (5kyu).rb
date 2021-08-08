=begin
ROT13 is a simple letter substitution cipher that replaces a letter with the
letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar
cipher.

Create a function that takes a string and returns the string ciphered with
Rot13. If there are numbers or special characters included in the string, they
should be returned as they are. Only letters from the latin/english alphabet
should be shifted, like in the original Rot13 "implementation".
=end

# my solution

def rot13(string)
  arr = string.split("").collect! do |x| 
    if x.ord >= 65 && x.ord <= 90
  	  (x.ord+13) > 'Z'.ord ? (x.ord+13 - 'Z'.ord + 'A'.ord - 1).chr : (x.ord+13).chr
    elsif x.ord >= 97 && x.ord <= 122
      (x.ord+13) > 'z'.ord ? (x.ord+13 - 'z'.ord + 'a'.ord - 1).chr : (x.ord+13).chr
  	else
  	  x
  	end
  end
  arr.reduce(:+)
end

# best solution

def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end

=begin
def rot13(string)
  origin = ('a'..'z').to_a.join + ('A'..'Z').to_a.join
  cipher = ('a'..'z').to_a.rotate(13).join + ('A'..'Z').to_a.rotate(13).join
  string.tr(origin, cipher)
end
=end