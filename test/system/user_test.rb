require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
    setup do
        @user = users(:one)
    end

    test "viewing users" do
        visit users_url
        assert_selector "h1", text: "Users"
    end

    test "should create a user" do
        visit users_url
        click_on "New user"

        fill_in "Name", with: @user.name
        fill_in "Email", with: @user.email
        fill_in "Password", with: @user.password
        fill_in "Confirmation", with: @user.password
        click_on "Create User"

        assert_text "Successfully created a user"
    end

    test "should edit a user" do
        visit user_url(@user)
        click_on "Edit this user"

        fill_in "Name", with: @user.name
        fill_in "Email", with: @user.email
        fill_in "Password", with: @user.password
        fill_in "Confirmation", with: @user.password
        click_on "Update User"

        assert_text "Successfully updated a user"
    end

    test "should destroy user" do
        visit user_url(@user)
        click_on "Destroy this user"

        assert_text "Successfully deleted a user"
    end
end