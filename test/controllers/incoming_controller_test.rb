require 'test_helper'

class IncomingControllerTest < ActionController::TestCase
  test "should get create" do
    post :create
    assert_response :success
  end

end
