"""
Check that a number is a valid number that has been given to 2 decimal places.
The number passed to the function will be given as a string. If the number
satisfies the criteria below, the function should return true, else it should
return false.

Please check the criteria for a valid number:

optional + or - symbol in front

optional digits before a decimal point (digits are characters ranging from
'0' to '9')

a decimal point

exactly two digits after the point

nothing else
"""

def valid_number(n):
	string = str(n)
	try:
		float(n)
		if string.count('') - string.find('.') - 2 == 2:
			return True 
		else:
			return False
	except ValueError:
		return False

#best solution
#uses re module

import re

def valid_number(n):
    return bool(re.fullmatch('[+-]?\d*\.\d\d', n))

