class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(subscription)
    @subscription = subscription
    @url  = 'http://example.com/login'
    mail(to: @subscription.email_address, subject: 'Welcome to Emuseum Thailand')
  end

  def confirmation_email(museum_owner)
  	@museum_owner = museum_owner
  	@url = @museum_owner.current_website
  	mail(to: @museum_owner.email_address, subject: 'You are confirmed')
  end

  def block_email(museum_owner)
  	@museum_owner = museum_owner
  	@url = @museum_owner.current_website
  	mail(to: @museum_owner.email_address, subject: 'You are confirmed')
  end

  def unblock_email(museum_owner)
  	@museum_owner = museum_owner
  	@url = @museum_owner.current_website
  	mail(to: @museum_owner.email_address, subject: 'You are confirmed')
  end
end
