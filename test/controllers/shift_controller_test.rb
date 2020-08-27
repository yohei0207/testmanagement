require 'test_helper'

class ShiftControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get shift_register_url
    assert_response :success
  end

end
