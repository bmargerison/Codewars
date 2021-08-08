=begin
Sheldon, Leonard, Penny, Rajesh and Howard are in the queue for a "Double Cola"
drink vending machine; there are no other people in the queue. The first one in
the queue (Sheldon) buys a can, drinks it and doubles! The resulting two
Sheldons go to the end of the queue. Then the next in the queue (Leonard) buys a
can, drinks it and gets to the end of the queue as two Leonards, and so on.

For example, Penny drinks the third can of cola and the queue will look like
this:

Rajesh, Howard, Sheldon, Sheldon, Leonard, Leonard, Penny, Penny
Write a program that will return the name of the person who will drink the n-th
cola.

Input:
The input data consist of an array which contains at least 1 name, and single
integer n which may go as high as the biggest number your language of choice
supports (if there's such limit, of course).

Output / Examples:
Return the single line — the name of the person who drinks the n-th can of cola.
The cans are numbered starting from 1.

whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 1) == "Sheldon"
whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 52) == "Penny"
whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 7230702951) == 
"Leonard"
=end

# my solution

def who_is_next(names, r)
  deductor = names.count
  until r - deductor <= 0
    r -= deductor
    deductor *= 2
  end
  r = (r.to_f / deductor.to_f) * names.count
  names[r.ceil-1]
end

# best solution

def whoIsNext(names, r)
  r -= 1
  while r >= names.size
    r -= names.size
    r /= 2
  end
  names[r]
end

def whoIsNext(names, can)
  duplications = 2 ** Math.log(can.fdiv(names.count).ceil, 2).truncate
  start_of_block = names.count * (duplications - 1)
  position_within_block = can - start_of_block
  index = position_within_block.fdiv(duplications).ceil
  names[index - 1]
end
