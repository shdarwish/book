class Book < ApplicationRecord
	belongs_to :genre

	has_many :posts

	has_many :authorbooks
	has_many :authors, through: :authorbooks

	has_many :locations
	has_many :bookstores, through: :locations

	validates :isbn, presence: true, uniqueness: true
    validates :title, presence: true
    validates :genre_id, presence: true

        def self.genrecheck(userid)
    	joins(:genre => {:usergenres => :user})
    		.where(["books.genre_id = genres.id
			and genres.id = usergenres.genre_id 
			and usergenres.user_id = users.id
			and users.id LIKE ?", "%#{userid}%" ])
    	end
end
