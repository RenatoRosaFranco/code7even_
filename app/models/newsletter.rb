# frozen_string_literal: true
class Newsletter < ApplicationRecord
  include NewsletterInterfaceable, MailerInterfaceable

  self.table_name  = 'newsletters'
  self.primary_key = 'id'

 	after_create :subscrible

  scope :registered,   -> { where(status: true)     }
  scope :unregistered, -> { where(status: false)    }
  scope :lasts,        -> { order(created_at: :asc) }
  scope :recents,      -> { order(created_at: :asc) }

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

  validates :token,
  					uniqueness: true
end
