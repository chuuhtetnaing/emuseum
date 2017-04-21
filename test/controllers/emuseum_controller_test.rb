require 'test_helper'

class EmuseumControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get emuseum_home_url
    assert_response :success
  end

  test "should get background" do
    get emuseum_background_url
    assert_response :success
  end

  test "should get news" do
    get emuseum_news_url
    assert_response :success
  end

end
