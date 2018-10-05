# frozen_string_literal: true
module NewsletterInterfaceable
  extend ActiveSupport::Concern
  
  def subscrible
  	set_token
  	set_status true
  	set_subscription_date
    mail_to NewsletterMailer, :subscrible, self
  	save
  end

  def unsubscrible
  	remove_token
  	set_status false
    mail_to NewsletterMailer, :unsubscrible, self
  	save
  end

  private
  	def set_token
  		self.token = SecureRandom.urlsafe_base64
  	end

  	def remove_token
  		self.token = nil
  	end

  	def set_status status = true
  		self.status = status
  	end

  	def set_subscription_date date = Date.today
  		self.subscription_date = date
  	end
end