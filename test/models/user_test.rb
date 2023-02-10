require "test_helper"

class UserTest < ActiveSupport::TestCase
    test "the truth" do
        assert true
    end

    test "should not save user without name and email" do
        user = User.new
        assert_not user.save, "Saved a user without name and email"
    end
end