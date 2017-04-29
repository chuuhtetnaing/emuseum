class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
  
  def admin_email(admin, subscription)
    @admin = admin
    @subscription = subscription
      mail(
        to: @admin.email,
        subject: "There is a new subscriber in Emuseum Thailand"
      )
  end

  def welcome_email(subscription, welcome_email)
    @subscription = subscription
    @welcome_email = welcome_email
    @url  = 'http://example.com/login'
    if (@welcome_email.nil?)
     mail(to: @subscription.email_address, subject: 'Welcome to Emuseum Thailand')
    else
      mail(to: @subscription.email_address, subject: @welcome_email.subject)
    end
  end

  def confirmation_email(museum_owner, confirmation)
  	@museum_owner = museum_owner
    @confirmation = confirmation
  	@url = @museum_owner.current_website
    if (@confirmation.nil?)
  	 mail(to: @museum_owner.email_address, subject: 'You are confirmed')
    
    else
      mail(to: @museum_owner.email_address, subject: @confirmation.subject)
    end
  end

  def reject_email(subscription, reject_email)
    @subscription = subscription
    @reject_email = reject_email
    if (@reject_email.nil?)
      mail(to: @subscription.email_address, subject: 'You are rejected')
    else
      mail(to: @subscription.email_address, subject: @reject_email.subject)
    end
  end

  def block_email(museum_owner, block_email)
  	@museum_owner = museum_owner
    @block_email = block_email
  	@url = @museum_owner.current_website

    if (@block_email.nil?)
      mail(to: @museum_owner.email_address, subject: 'You are Blocked')
    else
      mail(to: @museum_owner.email_address, subject: @block_email.subject)
    end
  end

  def unblock_email(museum_owner, unblock_email)
  	@museum_owner = museum_owner
    @unblock_email = unblock_email
  	@url = @museum_owner.current_website

    if (@unblock_email.nil?)
      mail(to: @museum_owner.email_address, subject: 'You are Unblocked')
    else
      mail(to: @museum_owner.email_address, subject: @unblock_email.subject)
    end
  end

end
