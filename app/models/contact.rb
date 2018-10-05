# frozen_string_literal: true
class Contact < Object
	include ActiveModel::Conversion, ActiveModel::Validations, MailerInterfaceable

	attr_accessor :name, :phone, :email, :message 

	def initialize(params = {})
		@name    = params[:name]
		@phone   = params[:phone]
		@email   = params[:email]
		@message = params[:message]
	end

	def persisted?
		false
	end

	def sendEmail
		mail_to(ContactMailer, :sended,   self, :deliver_now)
		mail_to(ContactMailer, :received, self, :deliver_now)
	end

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :phone,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 15 }

	validates :email,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :message,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 5_000 }
end
