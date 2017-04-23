require 'test_helper'

class WelcomeEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @welcome_email = welcome_emails(:one)
  end

  test "should get index" do
    get welcome_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_welcome_email_url
    assert_response :success
  end

  test "should create welcome_email" do
    assert_difference('WelcomeEmail.count') do
      post welcome_emails_url, params: { welcome_email: { content: @welcome_email.content, subject: @welcome_email.subject } }
    end

    assert_redirected_to welcome_email_url(WelcomeEmail.last)
  end

  test "should show welcome_email" do
    get welcome_email_url(@welcome_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_welcome_email_url(@welcome_email)
    assert_response :success
  end

  test "should update welcome_email" do
    patch welcome_email_url(@welcome_email), params: { welcome_email: { content: @welcome_email.content, subject: @welcome_email.subject } }
    assert_redirected_to welcome_email_url(@welcome_email)
  end

  test "should destroy welcome_email" do
    assert_difference('WelcomeEmail.count', -1) do
      delete welcome_email_url(@welcome_email)
    end

    assert_redirected_to welcome_emails_url
  end
end
