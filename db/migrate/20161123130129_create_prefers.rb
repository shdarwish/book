class CreatePrefers < ActiveRecord::Migration[5.0]
  def change
    create_table :prefers do |t|
      t.boolean :comment, default: true
      t.boolean :like, default: true
      t.boolean :follow, default: true
      t.integer :user_id

      t.timestamps
    end
  end
end
