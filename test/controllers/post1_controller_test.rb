require 'test_helper'

class Post1ControllerTest < ActionController::TestCase
  test "should get post2" do
    get :post2
    assert_response :success
  end

  test "should get post3" do
    get :post3
    assert_response :success
  end

  test "should get post4" do
    get :post4
    assert_response :success
  end

end
