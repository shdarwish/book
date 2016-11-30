class Bookstore < ApplicationRecord


	has_many :locations
	has_many :books, through: :locations

	validates :name, presence: true, uniqueness: true

end
