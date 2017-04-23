require 'test_helper'

class ConfirmationEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confirmation_email = confirmation_emails(:one)
  end

  test "should get index" do
    get confirmation_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_confirmation_email_url
    assert_response :success
  end

  test "should create confirmation_email" do
    assert_difference('ConfirmationEmail.count') do
      post confirmation_emails_url, params: { confirmation_email: { content: @confirmation_email.content, subject: @confirmation_email.subject } }
    end

    assert_redirected_to confirmation_email_url(ConfirmationEmail.last)
  end

  test "should show confirmation_email" do
    get confirmation_email_url(@confirmation_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_confirmation_email_url(@confirmation_email)
    assert_response :success
  end

  test "should update confirmation_email" do
    patch confirmation_email_url(@confirmation_email), params: { confirmation_email: { content: @confirmation_email.content, subject: @confirmation_email.subject } }
    assert_redirected_to confirmation_email_url(@confirmation_email)
  end

  test "should destroy confirmation_email" do
    assert_difference('ConfirmationEmail.count', -1) do
      delete confirmation_email_url(@confirmation_email)
    end

    assert_redirected_to confirmation_emails_url
  end
end
