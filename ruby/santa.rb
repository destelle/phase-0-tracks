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
	def reindeer_ranking
		 @reindeer_ranking
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
	def reindeer_ranking= (new_reindeer_ranking)
		@reindeer_ranking = new_reindeer_ranking
	end

	def celerate_birthday
		@age += 1
	end
	def get_mad_at(reindeer)
		i = 0
		temp = reindeer
		while(i < 10)
			if (@reindeer_ranking[i] == temp)
				@reindeer_ranking.insert(8,reindeer_ranking.delete_at(i))
			end
			i+=1
		end
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
	red.gender = "other"
	puts "#{red.gender}"
end

santas.each do |blue|
	blue.celerate_birthday
	puts "#{blue.age}"
end

santas.each do |yellow|
	yellow.get_mad_at("Dasher")
	puts "#{yellow.reindeer_ranking}"
end

santas.each do |red|
	
	puts "#{red.race}"
end