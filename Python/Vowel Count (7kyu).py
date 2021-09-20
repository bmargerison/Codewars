"""
Return the number (count) of vowels in the given string.

We will consider a, e, i, o, u as vowels for this Kata (but not y).

The input string will only consist of lower case letters and/or spaces.
"""

# my solution
def get_count(sentence):
    return sentence.count('a') + sentence.count('e') + sentence.count('i') + 
    sentence.count('o') + sentence.count('u')

# best soltuions
def getCount(inputStr):
    return sum(1 for let in inputStr if let in "aeiouAEIOU")

def getCount(s):
    return sum(c in 'aeiou' for c in s)

