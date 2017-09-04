def sequentialSearch(target, pointer)
  tries = 0
  until target == pointer
    #puts "seqSearch pointer at #{pointer}"
    pointer = pointer + 1
    tries = tries + 1
  end
  return tries
end

def midpt(x,y)
  (x+y)/2
end

def binarySearch(target,n)

  lower = 0
  upper = n
  tries = 0
  
  until midpt(lower,upper) == target
    puts "Binary search range: #{lower} - #{upper}."
    if midpt(lower,upper) < target
      lower = midpt(lower,upper)
    else
      upper = midpt(lower,upper)
    end
    tries=tries+1
  end
  return tries
end

def jumpSearch(target, n)
  jump = (Math.sqrt(n)).floor
  puts "Blocks are sized: #{jump}"
  blockStart = 0
  tries = 0
  until target < (blockStart+jump)
    blockStart = blockStart+jump
    tries = tries + 1
  end
  puts "blockstart: #{blockStart}"
  seqTries = sequentialSearch(target,blockStart)
  puts "Took #{tries} jumps and #{seqTries} tries."
  
  return seqTries + tries

  
end

puts "How many numbers to search through?"
n = Integer(gets.chomp)

target = rand(n)

puts "Target is #{target}."

x = sequentialSearch(target,0)

y = binarySearch(target,n)

z = jumpSearch(target,n)

puts "Sequential search took #{x} tries."
puts "Jump search took #{z} tries."
puts "Binary search took #{y} tries."


#fast = (x*100.0)/y
#puts "Binary search is #{fast}% faster."
#puts "Estimated: #{Math.log(n)} vs Actual: #{y}"


