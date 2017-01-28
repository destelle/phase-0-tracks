

puts "What is your name?"
myName = gets
myName = myName.chomp

puts "Please enter your age."
myAge = gets.chomp.to_i


puts "What year were you born"
myYear = gets.chomp.to_i
puts "#{myName} is #{myAge}, born in #{myYear}!"

puts "do you like garlic bread? (yes or no)"
bread = gets.chomp
case bread
	when 'y','Y','yes'
		bread = true;
	when 'n','N','no'
		bread = false
end
puts bread

puts "do you want to enroll in health insurance? (yes or no)"
health = gets.chomp
case health
	when 'y','Y','yes'
		health = true;
	when 'n','N','no'
		health = false
end
puts health