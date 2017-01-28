hamster = ""
volume = 1
fur = ""

puts "What is the hamsters name?"
hamster = gets.chomp

if(hamster == "")
	hamster = "Bolt"
end

puts "How loud is the hamster on a 1 to 10 level"
volume = gets.chomp.to_i

if( volume > 10 || volume < 1)
	puts "volume out of bounds set to  1"
end

puts "What color fur does it have?"
fur = gets.chomp

puts "Are they a good canadidate for adoption?(yes or no)"
adoption = gets.chomp

	case adoption
		when 'y','Y','yes'
			adoption=true;
		when 'n','N','no'
			adoption = false
	end


puts "How old is the hamster?"
age = gets.chomp.to_i
if (age == "")
	age = nil
end
puts "the hamster's name is #{hamster} they are #{age} years old.
The color of its fur is #{fur} and the status for adoption is #{adoption}"