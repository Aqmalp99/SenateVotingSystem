require "test_helper"

class CommissionerControllerTest < ActionDispatch::IntegrationTest
  test "should get home_page" do
    get commissioner_home_page_url
    assert_response :success
  end
end
