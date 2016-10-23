class Genre < ApplicationRecord

	has_many :books

	has_many :usergenres
	has_many :genres, through: :usergenres
end
