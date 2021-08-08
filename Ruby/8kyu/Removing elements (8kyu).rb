=begin
Take an array and remove every second element from the array. Always keep the
first element and start removing with the next element.
=end

# my solution

def remove_every_other(arr)
  arr.select.with_index { |x, ind| ind.even? }
end

# best solution

def remove_every_other(arr)
  arr.select.with_index { |_,idx| idx.even? }
end
