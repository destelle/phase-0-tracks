# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take each item from string, split the string at every space, add each new string to items key
  # set default quantity. set the default value to 1 
  # print the list to the console (print the hash)
# output: hash with key-value pairs with items and quantities 
def groceries(string)
  shopping = {}
  items = string.split(' ')
  items.each {|item| shopping[item] = 1}
  p shopping
end
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add item name as key and quantity as value, otherwise default value to 1. 
# output: updated hash 
def list_add(list, item_name, quantity=1)
  list[item_name] = quantity
  p list
end
# Method to remove an item from the list
# input:
# steps:
# output:
def remove(list, item_name)
	list.delete(item_name)
	p list
end


# Method to update the quantity of an item
# input:
# steps:
# output:
def quanity(list,item_name,quanity)
	if (list.has_key?(item_name) )
		list[item_name] = quanity
		p list
	end
end


# Method to print a list and make it look pretty
# input:
# steps:
# output:

def print(list)
	puts "Grocery List:"
	list.each do |key,value|
		puts "#{key} : #{value}"
	end
end

#DRIVER CODE ================================================================================
#grocery_list = groceries("carrots apples cereal pizza")
#p list_add(grocery_list, "blueberries")
#p remove(grocery_list, "blueberries")
#p quanity(grocery_list,"berries",4)
#p grocery_list
#print(grocery_list)

grocery_list_new = groceries("")
list_add(grocery_list_new,"Lemonade",2)
list_add(grocery_list_new,"Tomatoes",3)
list_add(grocery_list_new,"Onions",1)
list_add(grocery_list_new,"Ice Cream",4)
print(grocery_list_new)

remove(grocery_list_new,"Lemonade")
quanity(grocery_list_new,"Ice Cream",1)
print(grocery_list_new)

#Reflect============================================================================================
#What did you learn about pseudocode from working on this challenge?
#i learned that it is very simple at its core, i descirde what the method does, what it takes in, how to do the method and then the output
#What are the tradeoffs of using arrays and hashes for this challenge?
#i would say the trade off is time and amount of code/ code effeciency
#What does a method return?
# a method can return multiple different things but most standard is a value
#What kind of things can you pass into methods as arguments?
#objects, arrays strings etc
#How can you pass information between methods?
# with instance variables
#What concepts were solidified in this challenge, and what concepts are still confusing?
# most ideas have been solidified, i still mess up on syntax bc of java but thats managable 