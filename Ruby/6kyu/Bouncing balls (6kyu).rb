=begin
A child is playing with a ball on the nth floor of a tall building. The height
of this floor, h, is known.

He drops the ball out of the window. The ball bounces (for example), to
two-thirds of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window
(including when it's falling and bouncing?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer,
otherwise return -1.
=end

# my solution

def bouncingBall(h, bounce, window)
  if h > 0 && bounce > 0 && bounce < 1 && window < h
	seen = 1
	height = h*bounce
	while height > window
	  seen += 2
	  height *= bounce
	end
	seen
  else
  	-1
  end
end

# best solution

def bouncingBall(h, bounce, window)
  bounce < 0 || bounce >= 1 || h <= window || window < 0 ? -1 : bouncingBall(h * bounce, bounce, window) + 2
end