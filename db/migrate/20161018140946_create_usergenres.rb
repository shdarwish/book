class CreateUsergenres < ActiveRecord::Migration[5.0]
  def change
    create_table :usergenres do |t|
    	t.integer :genre_id
    	t.integer :user_id
      t.timestamps
    end
  end
end
