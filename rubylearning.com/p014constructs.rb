# p014constructs.rb
# In Ruby, nul and false evaluate to false
# every thing else (including true , 0) means true
# nil is an actual object
# if else end
var = 5
if var > 4
  puts "Variable is greater then 4"
  puts "I can have multiple statements here"
  if var == 5
    puts "Nested if else posible"
  else
    puts "Too cool"
  end
else
  puts "Variable is not greater then 5"
  puts "I can have multiple statememts here"
end
