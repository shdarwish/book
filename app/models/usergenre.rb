class Usergenre < ApplicationRecord

	#Relations
	belongs_to :user
	belongs_to :genre
end
