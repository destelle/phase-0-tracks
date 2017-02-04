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

def vowels(hname)
	i = 0
	while i < hname.length
		j = 0
		vowels = ["a" ,"e" , "i", "o" , "u"]
		while j < vowels.length
			if hname[i] == vowels.last
				hname[i] = vowels[0]
				break
			elsif hname[i] == vowels[j]
				hname[i] = vowels[j + 1]
				break
			end
			j+=1
		end
	
		i+=1
	end
end

def next_letter(hname)
	i=0
while i < hname.length
	alphebet = ["b" , "c", "d", "f", "g" ,"h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w","x", "y", "z"]

	k = 0
	while k < alphebet.length
		if hname[i] == alphebet.last
			hname[i] = alphebet[0]
			break
		elsif (hname[i] == alphebet[k])
			hname[i] = alphebet[k+1]
			break
		end
		k+=1
	end
	i+=1
end

end




while quit == false
	

puts "What is your real name?"



name = gets.chomp
original_name[count] = name
name = name.downcase


name = name.split(' ', 2)

first_name = name[0]
last_name = name[1]




vowels(last_name)
next_letter(last_name)
vowels(first_name)
next_letter(first_name)


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
alias_array.zip(original_name).each{|fake, real| puts "#{fake} is also know as #{real}"}
