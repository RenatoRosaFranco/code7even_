# frozen_string_literal: true
class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  self.table_name  = 'categories'
  self.primary_key = 'id'

	has_many :categories
  belongs_to :category, optional: true

  scope :by_name,      ->(name) { where(name: name)  }
  scope :lasts,        -> { order(created_at: :asc)  }
  scope :recents,      -> { order(created_at: :desc) }

  validates :name,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { mininum: 3, maximum: 30 }

  validates :description,
  					presence: true,
  					allow_blank: false,
  					uniqueness: false,
  					length: { minimum: 3, maximum: 145 }

  validates :tags,
  					presence: true,
  					uniqueness: false,
  					length: { minimum: 3, maximum: 75 }
end
