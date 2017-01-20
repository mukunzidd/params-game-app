class GamesController < ApplicationController
  def guess_the_number
  	@name = params["name"]

  	@message = ""
  	chars = @name.split("")

  	if  chars[0] == "a"
  		@message = "Hey #{@name.capitalize} your name starts with the first letter of the alphabet!"
  	end
  end
end