#Your task is to write function factorial.

#Was reading about recursion and decided to do one or two related kata

#my solution
def factorial(n)
  return 1 if n <= 1
  factorial(n-1) * n
end

#best solution

#cool solution but doesn't use recursion which was my aim
def factorial(n)
  (1..n).reduce(1,:*)
end

#another solution

#I should have refactored my answer onto one line...
def factorial(n)
  n < 2 ? 1 : n * factorial(n-1)
end
