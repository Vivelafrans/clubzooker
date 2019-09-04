require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_index_url
    assert_response :success
  end

  test "should get dashboard" do
    get user_dashboard_url
    assert_response :success
  end

  test "should get show" do
    get user_show_url
    assert_response :success
  end

  test "should get clubdashboard" do
    get user_clubdashboard_url
    assert_response :success
  end

end
