/
prompts user for their real name

will flip the first and last name with each other

changes the vowels of the name into the next vowels

changes the letters to the next in the alphebet 

make a loop for multiple agent names

store all aliases names with original names
/

count = 0
quit = false

alias_array = []
original_name = []





while quit == false
	

puts "What is your real name?"



name = gets.chomp
original_name[count] = name
name = name.downcase


name = name.split(' ', 2)

first_name = name[0]
last_name = name[1]

vowels = "aeiou"
alphebet = "bcdfghjklmnpqrstvwxyz"
i = 0
while i < last_name.length
	j = 0
	while j < vowels.length
		if (last_name[i] == vowels[j])
			last_name[i] = vowels[j + 1]
			break
		end
		j+=1
	end
	k = 0
	while k < alphebet.length
		if (last_name[i] == alphebet[k])
			last_name[i] = alphebet[k+1]
			break
		end
		k+=1
	end
	i+=1
end

i=0
while i < first_name.length
	j = 0
	while j < vowels.length
		if (first_name[i] == vowels[j])
			first_name[i] = vowels[j + 1]
			break
		end
		j+=1
	end
	k = 0
	while k < alphebet.length
		if (first_name[i] == alphebet[k])
			first_name[i] = alphebet[k+1]
			break
		end
		k+=1
	end
	i+=1
end

alias_name = last_name + " " + first_name



alias_array[count] = alias_name


count +=1

puts "hit enter to continue or type quit to exit"
holder = gets.chomp
case holder
		when 'quit'
			quit=true;
		
	end

end
alias_array.zip(original_name).each{|fake, real| puts " #{fake} is also know as #{real}"}
