"""
Write a function that flattens an Array of Array objects into a flat Array. Your
function must only do one level of flattening.
"""

#my solution
def flatten(lst):
    arr = []
    for items in lst:
        if not isinstance(items, list):
            arr.append(items)
        else:
            for i in items:
                arr.append(i)
    return arr

#best solution
#similar but used extend: adds all elements of iterable to the end of the list
def flatten(lst):
    r = []
    for x in lst:
       if type(x) is list:
          r.extend(x)
       else:
          r.append(x)
    return r 

