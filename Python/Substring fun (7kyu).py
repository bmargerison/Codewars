"""
Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which
should be returned as a string, where n is the position of the word in the list.
"""

#my solution
def nth_char(words):
    answer = ''
    for ind, word in enumerate(words):
        answer += word[ind]
    return answer

#best solution
#the one line for loop is pretty neat
#i was going to use join but thought i was in ruby mode...
def nth_char(words):
    return ''.join(w[i] for i,w in enumerate(words))