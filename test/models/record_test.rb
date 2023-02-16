require "test_helper"

class RecordTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
    @record = @user.records.build(content: "Lorem")
  end

  test "should be valid" do
    assert @record.valid?
  end

  test "user id should be present" do
    @record.user_id = nil
    assert_not @record.valid?
  end

  test "content should be present" do
    @record.content = " "
    assert_not @record.valid?
  end

  test "content should be at most 140 characters" do
    @record.content = "a" * 141
    assert_not @record.valid?
  end
end