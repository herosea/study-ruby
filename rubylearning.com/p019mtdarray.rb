# p019mtdarray.rb
# if you give return multiple parameters,
# the method returns them in an array
# the times method of the Integer class iterates block num times,
# passing in values from zero to num-1

def mtdarry
  10.times do |num|
    squre = num * num
    return num, squre if num > 5
  end
end

# using parallel assignment to collect the return value
num, square = mtdarry
puts num
puts square
