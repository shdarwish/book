class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.integer :user_id
      t.integer :creater_id
      t.string :kind
      t.boolean :read, :default => false
      t.integer :act_id
      t.integer :post_id

      t.timestamps
    end
  end
end
