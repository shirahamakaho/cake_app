require "test_helper"

class ChaoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chao_new_url
    assert_response :success
  end
end
