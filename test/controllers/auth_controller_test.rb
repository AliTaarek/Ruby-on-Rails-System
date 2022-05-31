require "test_helper"

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get auth_register_url
    assert_response :success
  end

  test "should get register_form" do
    get auth_register_form_url
    assert_response :success
  end

  test "should get login" do
    get auth_login_url
    assert_response :success
  end

  test "should get login_form" do
    get auth_login_form_url
    assert_response :success
  end
end
