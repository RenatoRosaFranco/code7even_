# string:sanatizer
class Service < ApplicationRecord

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :description,
						presence: true,
						uniqueness: false,
						length: { minimum: 3, maximum: 145 }

	validates :tags,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 75 }
end
