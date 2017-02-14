# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
    

    
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

    
    # The method is calling later methods and calling the parameters that were assigned in the initialize
    #method
    
    #What's the scope of instance vars? Yes, the whole class --> can you access them in any scope
    # throughout the class?
    
    # correct 
    
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
    

    # Taking in the parameters and performing calculations based on the population_density, 
    #returns the prediction about deaths 
    
    #Is there an equation you guys can make? What's the correlation between speed and 
    # number of deaths? 
    #How can you use constants here? 
    
    #it doesn't double, it increments by 0.1 you can have 
    
    # you can have one situation using 0.05 
    
    #and the rest is incrementing 0.1 
    
    
  def predicted_deaths
    # predicted deaths is solely based on population density 
      
      #I'm taking it back to your original implementation 
      
      #But essentially, you guys are almost there, however, to be honest the rounding 
      # implementation will not give you the exact answers your looking for 
      # Yes
      
      # So you want to try to trim the decimals? Maybe just divide? Is that what you guys
      # are trying to do? 
      
      # By the way, I have to go now, but you guys are close, if you can't get it no worries
      
      # Please reach out to me if you have any further questions about this problem
      # as there 
      
      # Great job by the way 
      
      # Please leave your feedback and I'm sorry about the tech difficulties! 
      
      #Cheers! 
      
    if @population_density >= 200
        number_of_deaths = (@population * 0.4).floor
        #Apply the pop formula
    elsif  @population_density >= 50
        number_of_deaths = (@population *  trim(@population_density/500)).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    puts "#{@state} will lose #{number_of_deaths} people in this outbreak"
      

  end 

 
    
    def trim(i)
        hodler = i.to_s
        new_string = hodler[0..2]
        temp = new_string.to_f
        return temp
    end


    
    
    # Taking in parameters and increments the speed based on how many tests pass
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200         
      speed += 0.5 
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
  
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

num = 0.18



STATE_DATA.each do |state, data|
    state_info = VirusPredictor.new(state, data[:population_density], data[:population])
    state_info.virus_effects
 
end 



#=======================================================================
# Reflection Section
#What are the differences between the two different hash syntaxes shown in the state_data file?
#one had the string which created unquie id's 
#What does require_relative do? How is it different from require?
#it checks the local files, while require can be from different places
#What are some ways to iterate through a hash?
# each
#When refactoring virus_effects, what stood out to you about the variables, if anything?
#i could access them anywhere within the class and recalling them was pointless
#What concept did you most solidify in this challenge
# instance variable and using the @ 