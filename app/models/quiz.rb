class Quiz < ApplicationRecord

	#belongs_to :user
	validates :q1, presence: true
	validates :q2, presence: true
	validates :q3, presence: true
	validates :q4, presence: true
	validates :q5, presence: true
	validates :q6, presence: true
	validates :q7, presence: true


	def self.get_result(q1, q2, q3, q4, q5, q6, q7)
	 	answers = [q1, q2, q3, q4, q5, q6, q7]
	 	results = { "A" => "Horror", "B" => "Adventure", "C" => "History", "D" => "Mystery", "E" => "Science Fiction", "F" => "Fantasy", "G" => "Comedy", "H" => "Thriller"}
	 	points = { "A" => 0, "B" => 0, "C" => 0, "D" => 0, "E" => 0, "F" => 0, "G" => 0, "H" => 0}

	 	answers.each do |q| 
	 		points.each do |key, value|
	 			if q == key 
	 				points[key] = value + 1
	 			end
	 		end
	 	end

		maxx = 0
	 	letter = ''
	 	points.each do |key, value|
	 		if points[key] > maxx
	 			maxx = points[key]
	 			letter = key
	 		end
	 	end

	 	puts maxx
	 	puts results[letter]

	 	result = results[letter]
	 end 

end
