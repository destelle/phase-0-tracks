#module Shout
	#def self.yell_angrily(words)
    	#words + "!!!" + " :("
 	#end
 	#def self.yell_happily(words)
    	#words + "!" + " :D"
 	#end
#end

#puts Shout.yell_happily("hi there")
#puts Shout.yell_angrily("this is bull")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yell_happily(words)
		words + "!" + " :D"
	end
end

class Fans
	include Shout
end

class Mobs
	include Shout
end

fan = Fans.new
puts fan.yell_happily("we won")
puts fan.yell_angrily("are you blind ref")

mob = Mobs.new
puts mob.yell_angrily("we want justice")
puts mob.yell_happily("our hero")