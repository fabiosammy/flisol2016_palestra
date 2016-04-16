require 'test_helper'

class FayeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
