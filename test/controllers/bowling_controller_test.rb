require 'test_helper'

class BowlingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bowling_index_url
    assert_response :success
  end

end
