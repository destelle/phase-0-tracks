class Santa
	attr_reader :age, :gender, :race, :reindeer_ranking
	attr_accessor :age, :gender, :race, 


	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie"	
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

gender_array = ["male", "female", "bigender", "fluid", "other"]
race_array = ["black", "white", "latino", "japanese", "other", "prefer not to say"]
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
i = 0
while (i < 50)
	santas[i] = Santa.new(gender_array.sample,race_array.sample)
	santas[i].age = rand(0...140)
	i+=1
end

santas[0].gender = "red"
santas.each do |red|
	
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