require 'test_helper'

class PatientControllerTest < ActionController::TestCase
  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

end
