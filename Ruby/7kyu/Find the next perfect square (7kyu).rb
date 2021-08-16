=begin
You might know some pretty large perfect squares. But what about the NEXT one?

Complete the findNextSquare method that finds the next integral perfect square
after the one passed as a parameter. Recall that an integral perfect square is
an integer n such that sqrt(n) is also an integer.

If the parameter is itself not a perfect square then -1 should be returned. You
may assume the parameter is non-negative.
=end

# my_solution

def find_next_square(sq)
  next_square = ((Math.sqrt(sq) + 1) * (Math.sqrt(sq) + 1))
  next_square % 1 == 0 ? next_square : -1
end

# best_solution

def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  number = Math.sqrt(sq) + 1
  number % 1 == 0 ? number**2 : -1
end