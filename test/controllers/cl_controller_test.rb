require 'test_helper'

class ClControllerTest < ActionDispatch::IntegrationTest
  test "should get toggle" do
    get cl_toggle_url
    assert_response :success
  end

end
