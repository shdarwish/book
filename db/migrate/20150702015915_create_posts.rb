class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.integer :book_id
    	t.string :status
      t.text :content, null: false
      t.references :user, index: true

      t.timestamps
    end
  end
end
