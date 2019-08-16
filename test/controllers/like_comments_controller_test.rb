require 'test_helper'

class LikeCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get toggle" do
    get like_comments_toggle_url
    assert_response :success
  end

end
