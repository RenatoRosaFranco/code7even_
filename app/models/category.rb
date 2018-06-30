# string:sanatizer
class Category < ApplicationRecord
  belongs_to :category, optional: true

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
