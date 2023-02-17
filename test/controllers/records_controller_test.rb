require "test_helper"

class RecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get records_path
    assert_response :success
  end

  def setup
    @record = records(:one)
    end


  test "should redirect create when not logged in" do
    assert_no_difference 'Record.count' do
      post records_path, params: { record: { content: "Lorem ipsum" } }
    end
      assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Record.count' do
      delete record_path(@record)
    end
    assert_redirected_to login_url
  end

end
