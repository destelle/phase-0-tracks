*/
this code helps better determine how to interior design
a clients home. we will ask if they have children, how old they are
abd if they are married as all of these are factors as to how
we can decorate the house.


create hash

create varablie inside hash either blank or prefilled

prompts the user to fill in keys

prints to screen the hash

prompts the user to check if everything is right and
lets them correct 1 part of information

reprints to screen the final hash

*/

client = {
	:name => "bob",
	:children => 4,
	:age => 145,
	:married => true
}

puts "What is your name?"
client[:name] = gets.chomp

puts "How many children do you have?"
client[:children] = gets.chomp.to_i

puts "What is your Age?"
client[:age] = gets.chomp.to_i

puts "Are you married?"
holder = gets.chomp    
case holder
  when 'y','Y','yes'
    client[:married] = true
  when 'n', 'N','no' 
    client[:married] = false
end

p client

continue = false

update = gets.chomp
case update
	
	when 'name'
		puts "What is your name"
		client[:name] = gets.chomp
	when 'age'
		puts "What is your weight?"
		client[:weight] = gets.chomp.to_i
	when 'married'
		if (client[:married] == true)
			client[:married] = false
		else 
			client[:married] = true
		end
	when 'children'
		puts "How many children do you have?"
		client[:children] = gets.chomp.to_i

end

p client


