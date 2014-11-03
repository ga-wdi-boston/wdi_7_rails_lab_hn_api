class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    t.integer :count
    t.belongs_to :user
    t.belongs_to :comment
    t.belongs_to :post
    
    t.timestamps
	
	end
   	add_index :votes, [:user_id, :post_id], unique:true
   	add_index :votes, [:user_id, :comment_id], unique:true

  end
end
