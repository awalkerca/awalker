require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get social" do
    get :social
    assert_response :success
    assert_select 'section#social'
    assert_select 'section h2', 'Social'
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select 'section#about'
    assert_select 'section h2', 'About'
  end

end
