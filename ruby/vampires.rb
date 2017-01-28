puts "How many employees will be processed?"
employees = gets.chomp.to_i

i = 0
while i < employees

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
	if(correctAge == true && bread != true && health != false)
		result = "Results incconclusive"
	end
	if (myName == "Drake Cula" || myName == "Tu Fang")
		result = "Definitely a vampire"
	end

	stop = false
	count = 0
	while stop == false
		if count == 0
			puts "list allergies one at a time"
			count +=1
		end
		allergies = gets.chomp
		if allergies == "sunlight"
			result = "Probably a vampire"
			break

		else
			puts "Are you finished listing allergies"
			stop = gets.chomp
			case stop
				when 'y','Y','yes'
					stop = true;
				when 'n','N','no'
					stop = false
					puts "continue"
			end
		end
	end

	puts result
 	i += 1
end
puts "Actually, never mind! What do these questions have to do with anything?
Let's all be friends."
	
	