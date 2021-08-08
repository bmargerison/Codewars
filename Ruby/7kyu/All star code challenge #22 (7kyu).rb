=begin
Create a function that takes an integer argument of seconds and converts the
value into a string describing how many hours and minutes comprise that many 
seconds.

Any remaining seconds left over are ignored.
=end

# my solution

def to_time(seconds)
  hours = seconds/3600
  minutes = (seconds - hours*3600)/60
  "#{hours} hour(s) and #{minutes} minute(s)"
end

# best solution

def to_time(seconds)
  h, m = (seconds / 60).divmod(60)
  "#{h} hour(s) and #{m} minute(s)"
end