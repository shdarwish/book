class Location < ApplicationRecord

	belongs_to :bookstore
	belongs_to :book
end
