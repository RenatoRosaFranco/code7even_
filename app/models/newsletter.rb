# string:sanatizer
class Newsletter < ApplicationRecord
 	
 	after_create :subscrible

  def subscrible
  	self.status = true 
  	self.token  = SecureRandom.urlsafe_base64
  	self.save!
  end

  def unsubscrible
  	self.status = false
  	self.token = ''
  	self.save!
  end

  validates :name,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 30 }

  validates :email,
  					presence: true,
  					uniqueness: true,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 145 }
end
