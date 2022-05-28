require "test_helper"

class BallotControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ballot_index_url
    assert_response :success
  end
end
