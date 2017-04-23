require 'test_helper'

class UnblockEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unblock_email = unblock_emails(:one)
  end

  test "should get index" do
    get unblock_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_unblock_email_url
    assert_response :success
  end

  test "should create unblock_email" do
    assert_difference('UnblockEmail.count') do
      post unblock_emails_url, params: { unblock_email: { content: @unblock_email.content, subject: @unblock_email.subject } }
    end

    assert_redirected_to unblock_email_url(UnblockEmail.last)
  end

  test "should show unblock_email" do
    get unblock_email_url(@unblock_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_unblock_email_url(@unblock_email)
    assert_response :success
  end

  test "should update unblock_email" do
    patch unblock_email_url(@unblock_email), params: { unblock_email: { content: @unblock_email.content, subject: @unblock_email.subject } }
    assert_redirected_to unblock_email_url(@unblock_email)
  end

  test "should destroy unblock_email" do
    assert_difference('UnblockEmail.count', -1) do
      delete unblock_email_url(@unblock_email)
    end

    assert_redirected_to unblock_emails_url
  end
end
