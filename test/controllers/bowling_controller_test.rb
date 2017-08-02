require 'test_helper'

class BowlingControllerTest < ActionDispatch::IntegrationTest

  test "it starts a game" do
    @game = Bowling.new
  end
end
