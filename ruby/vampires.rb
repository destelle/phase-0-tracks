

puts "What is your name?"
myName = gets
myName = myName.chomp

puts "Please enter your age."
myAge = gets.chomp.to_i


puts "What year were you born"
myYear = gets.chomp.to_i
puts "#{myName} is #{myAge}, born in #{myYear}!"