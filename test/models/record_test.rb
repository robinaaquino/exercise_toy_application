require "test_helper"

class RecordTest < ActiveSupport::TestCase
    test "the truth" do
        assert true
    end

    test "should not save record without content and user ID" do
        record = Record.new
        assert_not record.save, "Saved a record without content and userID"
    end
end