class Santa
	

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"	
	end
	#getters
	def age
		 @age
	end
	def gender
		 @gender
	end
	def race
		 @race
	end
	def raindeer_ranking
		 @raindeer_ranking
	end

	#setters
	def age=(new_age)
		@age = new_age
	end
	def race=(new_race)
		@race = new_race
	end
	def gender=(new_gender)
		@gender = new_gender
	end
	def raindeer_ranking= (new_raindeer_ranking)
		@raindeer_ranking = new_raindeer_ranking
	end

	def initialize(gender,race)
		puts "initializing Santa instace..."
		@gender = gender
		@race = race
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
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


santas.each do |red|
	puts "#{red.race}"
end
