


def encrypt (word)
i = 0
while i < word.length 
	word[i] = word[i].next! 
	i+=1
end

puts word
end


def decrypt (word)
i = 0
alphabet = "abcdefghijklmnopqrstuvwxyz"
while i < word.length 
	j = 0
	while j < alphabet.length
		if (word[i] ==alphabet[j])
			word[i] = alphabet[j-1]
			break
		end
		j+=1
	end
	i+=1
end

puts word
end
puts "Would you like to decrypt or encrypt a password?(d or e)"
agent = gets.chomp
	case agent
		when 'd','D','decrypt'
			agent = true;
		when 'e','E','encrypt'
			agent = false
	end
puts "What is the password?"
password = gets.chomp

if(agent == true)
	decrypt(password)
else
	encrypt(password)
end
