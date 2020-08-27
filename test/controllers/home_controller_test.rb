require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get how" do
    get home_how_url
    assert_response :success
  end

end
