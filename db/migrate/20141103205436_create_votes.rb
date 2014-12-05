class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true
      t.references :submission, index: true
      t.references :comment, index: true
      t.boolean :value

      t.timestamps
    end

    add_index :votes, [:user_id, :submission_id], unique: true
    add_index :votes, [:user_id, :comment_id], unique: true
  end
end
