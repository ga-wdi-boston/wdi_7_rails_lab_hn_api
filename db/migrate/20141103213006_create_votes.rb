class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :post, index: true
      t.belongs_to :comment, index: true
      t.boolean :value
    end

    add_index :votes, [:user_id, :post_id], unique: true
    add_index :votes, [:user_id, :comment_id], unique: true

  end
end
