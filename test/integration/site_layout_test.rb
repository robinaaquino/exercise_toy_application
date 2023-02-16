require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", records_path
  end

  test "users link" do
    get root_path
    get users_path
    assert_select "title", "Users"
  end

  test "records link" do
    get root_path
    get records_path
    assert_select "title", "Records"
  end
end
