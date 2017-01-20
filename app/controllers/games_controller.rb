class GamesController < ApplicationController
  def guess_the_number
  	@name = params["name"]
  end
end