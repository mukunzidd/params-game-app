class GamesController < ApplicationController
  def guess_the_number
  	@name = params["name"]

  	@message = ""
  	chars = @name.split("")

  	if  chars[0] == "a"
  		@message = "Hey #{@name.capitalize} your name starts with the first letter of the alphabet!"
  	end

  	@guess = params["guess"]

  	number = 36

  	@win = ""
  	@high = ""
  	@low = ""

	  if @guess.to_i == number
	  	@win = "Aloooo, you live dangerously, maybe that's why you got it right! YOU WON THE GAME"
	  elsif @guess.to_i < number
	  	@high = "Guess higher"
	  elsif @guess.to_i > number
	  	@low = "Guess lower"
	  end
  end
end