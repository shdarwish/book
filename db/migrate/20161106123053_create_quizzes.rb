class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
    	#t.integer :user_id
    	#t.references :user, index: true
    	t.string :q1
    	t.string :q2
    	t.string :q3
    	t.string :q4
    	t.string :q5
    	t.string :q6
    	t.string :q7
      t.string :result

      t.timestamps
    end
  end
end
