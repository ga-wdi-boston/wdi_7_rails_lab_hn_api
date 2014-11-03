class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :submission, index: true
      t.belongs_to :comment, index: true
      t.boolean :value
    end

    add_index :unique_submission_vote_keys, [:user_id, :submission_id], unique: true
    add_index :unique_comment_vote_keys, [:user_id, :comment_id], unique: true
  end
end
