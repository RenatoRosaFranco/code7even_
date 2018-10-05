# frozen_string_literal: true
class Post < ApplicationRecord
	extend FriendlyId
	friendly_id :title, use: :slugged

	self.table_name  = 'posts'
	self.primary_key = 'id'

	scope :title,        -> (title) { where(title: title) }
  scope :lasts,        -> { order(created_at: :asc)     }
  scope :recents,      -> { order(created_at: :desc)    }

	enum status: [:published, :unpublished]
	belongs_to :category

	validates :title,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :description,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :content,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 10_000 }

	validates :tags,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 75 }
end
