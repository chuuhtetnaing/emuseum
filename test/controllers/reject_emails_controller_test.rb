require 'test_helper'

class RejectEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reject_email = reject_emails(:one)
  end

  test "should get index" do
    get reject_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_reject_email_url
    assert_response :success
  end

  test "should create reject_email" do
    assert_difference('RejectEmail.count') do
      post reject_emails_url, params: { reject_email: { content: @reject_email.content, subject: @reject_email.subject } }
    end

    assert_redirected_to reject_email_url(RejectEmail.last)
  end

  test "should show reject_email" do
    get reject_email_url(@reject_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_reject_email_url(@reject_email)
    assert_response :success
  end

  test "should update reject_email" do
    patch reject_email_url(@reject_email), params: { reject_email: { content: @reject_email.content, subject: @reject_email.subject } }
    assert_redirected_to reject_email_url(@reject_email)
  end

  test "should destroy reject_email" do
    assert_difference('RejectEmail.count', -1) do
      delete reject_email_url(@reject_email)
    end

    assert_redirected_to reject_emails_url
  end
end
