require 'test_helper'

class MuseumOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @museum_owner = museum_owners(:one)
  end

  test "should get index" do
    get museum_owners_url
    assert_response :success
  end

  test "should get new" do
    get new_museum_owner_url
    assert_response :success
  end

  test "should create museum_owner" do
    assert_difference('MuseumOwner.count') do
      post museum_owners_url, params: { museum_owner: { blocked: @museum_owner.blocked, password: @museum_owner.password, subscription_id: @museum_owner.subscription_id, url: @museum_owner.url, username: @museum_owner.username } }
    end

    assert_redirected_to museum_owner_url(MuseumOwner.last)
  end

  test "should show museum_owner" do
    get museum_owner_url(@museum_owner)
    assert_response :success
  end

  test "should get edit" do
    get edit_museum_owner_url(@museum_owner)
    assert_response :success
  end

  test "should update museum_owner" do
    patch museum_owner_url(@museum_owner), params: { museum_owner: { blocked: @museum_owner.blocked, password: @museum_owner.password, subscription_id: @museum_owner.subscription_id, url: @museum_owner.url, username: @museum_owner.username } }
    assert_redirected_to museum_owner_url(@museum_owner)
  end

  test "should destroy museum_owner" do
    assert_difference('MuseumOwner.count', -1) do
      delete museum_owner_url(@museum_owner)
    end

    assert_redirected_to museum_owners_url
  end
end
