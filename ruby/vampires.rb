

puts "What is your name?"
myName = gets
myName = myName.chomp

puts "Please enter your age."
myAge = gets.chomp.to_i


puts "What year were you born"
myYear = gets.chomp.to_i


puts "do you like garlic bread? (yes or no)"
bread = gets.chomp
case bread
	when 'y','Y','yes'
		bread = true;
	when 'n','N','no'
		bread = false
end


puts "do you want to enroll in health insurance? (yes or no)"
health = gets.chomp
case health
	when 'y','Y','yes'
		health = true;
	when 'n','N','no'
		health = false
end


sum = myAge + myYear
if (sum == 2017 || sum == 2016)
	correctAge = true
else
	correctAge = false
end

puts correctAge
result = ""
if (correctAge == true && bread == true && health == true)
	result = "Probably not a vampire"
end
if (correctAge == false && bread == false && health == false)
	result = "Almost certainly a vampire"
end
if (correctAge == false && (bread == false || health == false))
	result = "Probably a vampire"
end
if(correctAge == true && bread == false && health == false)
	result = "Results incconclusive"
end
if (myName == "Drake Cula" || myName == "Tu Fang")
	result = "Definitely a vampire"
end


puts result
	
	
	