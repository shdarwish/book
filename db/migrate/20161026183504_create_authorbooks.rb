class CreateAuthorbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :authorbooks do |t|
    	t.integer :book_id
    	t.integer :author_id

      t.timestamps
    end
  end
end
