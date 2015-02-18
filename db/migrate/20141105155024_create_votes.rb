class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :value
      t.belongs_to :user, index: true
      t.belongs_to :post, index: true
      t.belongs_to :comment, index: true

      t.timestamps null: false
    end
  end
end
