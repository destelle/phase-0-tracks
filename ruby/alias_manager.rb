/
prompts user for their real name

will flip the first and last name with each other

changes the vowels of the name into the next vowels

changes the letters to the next in the alphebet 

make a loop for multiple agent names

store all aliases names with original names
/

puts "What is your real name?"

original_name = {

}

name = gets.chomp
original_name[:agent] = name

name = name.split(' ', 2)

first_name = name[0]
last_name = name[1]



puts first_name
puts original_name