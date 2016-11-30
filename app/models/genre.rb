class Genre < ApplicationRecord


  
	has_many :books

	has_many :usergenres
	has_many :users, through: :usergenres

	validates :name, presence: true, uniqueness: true
end
