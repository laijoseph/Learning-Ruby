def sequentialSearch(target)
  tries = 0
  until target == tries do
    tries = tries+1
  end
  return tries
end

def midpt(x,y)
  (x+y)/2
end

def binarySearch(target)

  lower = 0
  upper = target
  tries = 0
  
  until midpt(lower,upper) == target do
    if midpt(lower,upper) < target
      lower = midpt(lower,upper)
    else
      upper = midpt(lower,upper)
    end
    tries=tries+1
  end
  return tries
end

puts "How many numbers to search through?"
n = Integer(gets.chomp)

target = rand(n)

puts "Target is #{target}."

x = sequentialSearch(target)

y = binarySearch(target)

fast = (y*100.0)/x

puts "Binary search is #{fast}% faster."

