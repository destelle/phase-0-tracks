class Santa
	

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"	
	end
	def age
		puts age
	end
	def gender
		puts gender
	end
	def race
		puts race
	end
	def raindeer_ranking
		puts raindeer_ranking
	end

	def initialize(g,r)
		puts "initializing Santa instace..."
		gender = g
		race = r
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end
end

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
 i = 0
while (i < santas.length)
	santas[i].eat_milk_and_cookies("chocolate chip")
	i+= 1
end