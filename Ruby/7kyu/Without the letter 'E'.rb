=begin
Is it possible to write a book without the letter 'e' ?
Task

Given String str, return:
How much "e" does it contains (case-insensitive) in string format.
If given String doesn't contain any "e", return: "There is no "e"."
If given String is empty, return empty String.
If given String is `null`/`None`/`nil`, return `null`/`None`/`nil`
=end

#my solution
#a bit contrived because I'm trying to shoehorn Regex in
def find_e(s)
  return nil if s.nil?
  return "" if s.empty?
  s.match?(/[Ee]/) ? s.scan(/[Ee]/).size.to_s : "There is no \"e\"."
end

#best solution
#clever to get it to return nil or empty string in one line of code, but is it 
#more readable?
def find_e2(s)
  return s unless s&.size&. > 0
  s.count('Ee').zero? ? 'There is no "e".' : s.count('Ee').to_s
end

