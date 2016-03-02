require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  test "should get help" do
    get :help
    assert_response :success
  end
end
