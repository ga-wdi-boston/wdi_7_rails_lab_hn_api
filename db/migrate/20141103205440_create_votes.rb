class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :submission
      t.belongs_to :comment, null: false
      t.integer :direction, null: false

      t.timestamps null: false
    end
    add_index :votes, [:user_id, :submission_id], unique: true
    add_index :votes, [:user_id, :comment_id], unique: true
  end
end
