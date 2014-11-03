class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user, index: true
      t.belongs_to :comment, index: true
      t.belongs_to :thread, index: true
    end
  end
end
