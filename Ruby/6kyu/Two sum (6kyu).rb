=begin
Write a function that takes an array of numbers (integers for the tests) and a
target number. It should find two different items in the array that, when added
together, give the target value. The indices of these items should then be
returned in a tuple like so: (index1, index2).

For the purposes of this kata, some tests may have multiple answers; any valid
solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater,
and all of the items will be numbers; target will always be the sum of two
different items from that array).
=end

# my solution

def two_sum(numbers, target)
  len = numbers.length

  numbers.select.with_index do |x, i|
    count = i+1
    while count < len
      sum = x + numbers[count]
      break if sum == target
      sum -= numbers[count]
      count += 1
    end

    if sum==target
      unless numbers[count].nil?
        return [i, count] 
      end
    end
  end
end


# best solutions

def twoSum(numbers, target)
  numbers.each_with_index do |n1, i1|
    numbers.each_with_index do |n2, i2|
      return [i1, i2] if (n1 + n2) == target && i1 != i2
    end
  end
end


def two_sum(numbers, target)
  pair = numbers.combination(2).find{ |(a,b)| a+b == target }
  [numbers.index(pair[0]), numbers.rindex(pair[1])]
end


