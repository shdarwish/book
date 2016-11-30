class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.integer :genre_id
      t.string :bookimage
      t.text :description
      t.integer :count,  :default => 0

      t.timestamps
    end
  end
end
