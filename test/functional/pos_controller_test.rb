require 'test_helper'

class PosControllerTest < ActionController::TestCase
  test "should get accept" do
    get :accept
    assert_response :success
  end

end
