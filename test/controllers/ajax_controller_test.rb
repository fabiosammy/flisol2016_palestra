require 'test_helper'

class AjaxControllerTest < ActionController::TestCase
  test "should get pooling" do
    get :pooling
    assert_response :success
  end

  test "should get long_pooling" do
    get :long_pooling
    assert_response :success
  end

end
