Rails.application.routes.draw do
  get "/guess", to: 'games/guess_the_number'
end
