require 'test_helper'

class BlockEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @block_email = block_emails(:one)
  end

  test "should get index" do
    get block_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_block_email_url
    assert_response :success
  end

  test "should create block_email" do
    assert_difference('BlockEmail.count') do
      post block_emails_url, params: { block_email: { content: @block_email.content, subject: @block_email.subject } }
    end

    assert_redirected_to block_email_url(BlockEmail.last)
  end

  test "should show block_email" do
    get block_email_url(@block_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_block_email_url(@block_email)
    assert_response :success
  end

  test "should update block_email" do
    patch block_email_url(@block_email), params: { block_email: { content: @block_email.content, subject: @block_email.subject } }
    assert_redirected_to block_email_url(@block_email)
  end

  test "should destroy block_email" do
    assert_difference('BlockEmail.count', -1) do
      delete block_email_url(@block_email)
    end

    assert_redirected_to block_emails_url
  end
end
