class GamesController < ApplicationController
  def guess_the_number
  	@name = params[:name]

  	@message = ""
  	chars = @name.split("")

  	if  chars[0] == "a"
  		@message = "Hey #{@name.capitalize} your name starts with the first letter of the alphabet!"
  	end

  	@guess = params[:guess]

  	number = 36

  	@win = ""
  	@high = ""
  	@low = ""

	  if @guess.to_i == number
	  	@win = "Incredible!!! YOU WON THE GAME"
	  elsif @guess.to_i < number
	  	@high = "You don't need to guess this low, PLZ Guess higher"
	  elsif @guess.to_i > number
	  	@low = "Oh boy! Guess lower"
	  end
  end
end