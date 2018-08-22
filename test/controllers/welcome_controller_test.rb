require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get welcome_home_url
    assert_response :success
  end

  test "should get aboutus" do
    get welcome_aboutus_url
    assert_response :success
  end

end
