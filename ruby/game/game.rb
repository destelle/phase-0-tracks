require 'io/console'

class Game
attr_accessor :display_string, :gameover, :correct_g, :wrong_g,:word, :secret_word,:guess_count, :total_guess, :guessed_letters

	secret_word = []
	guess_count = 0
	

#this method initializies the game and runs the game to the end
#input: it takes in the word the user is guessing 
#method: takes passed in string, makes it lowercased and then into an array
#using the words length sets the number of guesses to the length of the string + 4
#however if it is a long word makes total number of guesses under the total letters in the alpabet
#runs a while loop to run until the game is finished
#runs an until for repeated guesses
#allows the user to guess the word not just letters
	def initialize(word)
		puts "game initializing"
		@guessed_letters = []
		@word = word
		temp = word.downcase.delete(' ')
    	@secret_word = temp.split('')
    	
    	@guess_count = word.length.to_i + 4
    	if(guess_count > 26)
    		guess_count = 24
    	end
    
    	@gameover = false

		show_progress(secret_word,guessed_letters)

    	while @gameover == false 
    	
      begin
			 puts "guess a letter or the word: "
			 letter = gets.chomp
       letter = letter.downcase
     
      
      end until @guessed_letters.include?(letter) == false
    if (letter == temp)
        puts "Letters guessed #{guessed_letters}"
        puts "YOU WIN by means of guessing the word"
        break
      end

			@guessed_letters.push(letter)
			guess(letter,secret_word)
			puts "Letters guessed #{guessed_letters}"
			show_progress(secret_word,guessed_letters)
			


		  end

  	end


#this method tells the user if his guess was correct or not
#input: it takes in the word the user is guessing and the letter he has currently guessed
#method checks to see if the word contains the letter 
#output: tells the user if he guessed the letter correctly and updates guess counter
  	def guess(letter, secret_word)
  		
  		
  		right = false
  	
  		secret_word.each do|char| 

  			if char == letter
  				right = true
  			end
  		end
  		
  		if right == true
  			puts "correct!"
  			
  		else
  			puts "wrong!"
  		end
  		@guess_count -= 1

  		puts "Guesses remaining #{guess_count}"
  		


  	end
#this method shows the progress of the game
#input: it takes in the display string
#method: checks to see if the string had been revealed or not and if you have guesses remaining
#output: if the game is over or not

  	def gameover(string)
  		
  		if(string.include?("_") == true)
  			@gameover = false
      end
  		if(guess_count > 0 && string.include?("_") == true)
  			@gameover = false
      end
  		if(guess_count > 0 && string.include?("_") == false )
  			puts "YOU WIN!"
  			@gameover = true
      end
  		if(guess_count == 0 )
  			if (string.include?("_") == false)
  				puts "YOU WIN"
  				@gameover = true
  			else 
  				puts "YOU LOSE!"
  				@gameover = true
  			end
  		end

  	end

#this method shows the progress of the word being guessed
#input: it takes in the word the user is guessing and the letter he has currently guessed
#method checks to see if the word contains the letter and replaces it if it does
#output: the current revealed word
  	def show_progress(word,guessed_letters)
  		@display_string = ''
  		word.each do |char|
    		if guessed_letters.include?(char)
      			@display_string << char
    		else 
    			
      			@display_string << '_'
    		end
    	 
   		 end
   		 puts display_string
   		 gameover(display_string)
	end
end


#Driver code============================================================================
puts "Enter a word: "
#noecho hides the users word
string = STDIN.noecho(&:gets).chomp

game = Game.new(string)
