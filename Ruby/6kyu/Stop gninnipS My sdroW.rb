=begin
Write a function that takes in a string of one or more words, and returns the 
same string, but with all five or more letter words reversed (like the name of 
this kata).

    Strings passed in will consist of only letters and spaces.
    Spaces will be included only when more than one word is present.
=end

#my solution
def spin_words(string)
  string.split(' ').map! { |x| x.length >= 5? x.reverse : x }.join(' ')
end

#best solution
#Regex didn't cross my mind... will have to remember { } for length
def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end