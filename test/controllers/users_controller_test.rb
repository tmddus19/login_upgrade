require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get sessions" do
    get :sessions
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

end
