require 'test_helper'

class WishlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wishlists_index_url
    assert_response :success
  end

  test "should get show" do
    get wishlists_show_url
    assert_response :success
  end

  test "should get new" do
    get wishlists_new_url
    assert_response :success
  end

  test "should get edit" do
    get wishlists_edit_url
    assert_response :success
  end

end
