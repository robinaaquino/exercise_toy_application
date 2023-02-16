require "test_helper"

class RecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get records_path
    assert_response :success
  end
end
