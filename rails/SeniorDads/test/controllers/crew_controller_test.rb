require 'test_helper'

class CrewControllerTest < ActionController::TestCase
  test "should get default" do
    get :default
    assert_response :success
  end

end
