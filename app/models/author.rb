class Author < ApplicationRecord



	has_many :authorbooks
	has_many :books, through: :authorbooks

	validates :name, presence: true, uniqueness: true
end
