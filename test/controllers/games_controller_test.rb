require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get guess_the_number" do
    get games_guess_the_number_url
    assert_response :success
  end

end
