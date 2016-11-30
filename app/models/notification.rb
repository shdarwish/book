class Notification < ApplicationRecord

	belongs_to :user

	def self.alln(userid)
    	where(["user_id LIKE ?", "%#{userid}%" ]).order(created_at: :desc)
    end

    def self.onlycl(userid)
    	where(["user_id LIKE ? and (kind LIKE ? 
    	or kind LIKE ?)", "%#{userid}%", "like", "comment"]).order(created_at: :desc)
	end

	def self.onlycf(userid)
    	where(["user_id LIKE ? and (kind LIKE ? 
    	or kind LIKE ?)", "%#{userid}%", "follow", "comment"]).order(created_at: :desc)
	end

	def self.onlyfl(userid)
    	where(["user_id LIKE ? and (kind LIKE ? 
    	or kind LIKE ?)", "%#{userid}%", "follow", "like"]).order(created_at: :desc)
	end

	def self.onlyl(userid)
    	where(["user_id LIKE ? and kind LIKE ?", "%#{userid}%", "like"]).order(created_at: :desc)
	end

	def self.onlyc(userid)
    	where(["user_id LIKE ? and kind LIKE ?", "%#{userid}%", "comment"]).order(created_at: :desc)
	end

	def self.onlyf(userid)
    	where(["user_id LIKE ? and kind LIKE ?", "%#{userid}%", "follow"]).order(created_at: :desc)
	end
end

