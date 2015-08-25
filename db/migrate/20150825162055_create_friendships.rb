class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :from_id
      t.integer :to_id
      t.boolean :accepted

      t.timestamps null: false
    end

    add_foreign_key :friendships, :users, column: :from_id
    add_foreign_key :friendships, :users, column: :to_id
    add_index :friendships, [:from_id, :to_id], unique: true
  end
end
