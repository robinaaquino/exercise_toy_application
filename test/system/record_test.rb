require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
    setup do
        @user = users(:one)
        @record = records(:one)
    end
    
    test "viewing records" do
        visit records_url
        assert_selector "h1", text: "Records"
    end

    test "should create a record" do
        visit records_url
        click_on "New record"

        fill_in "Content", with: @record.content
        fill_in "User", with: @user.id
        click_on "Create Record"

        assert_text "Successfully created a record"
    end

    test "should edit a record" do
        visit record_url(@record)
        click_on "Edit this record"

        fill_in "Content", with: @record.content
        fill_in "User", with: @user.id
        click_on "Update Record"

        assert_text "Successfully updated a record"
    end

    test "should destroy record" do
        visit record_url(@record)
        click_on "Destroy this record"

        assert_text "Successfully deleted a record"
    end
end