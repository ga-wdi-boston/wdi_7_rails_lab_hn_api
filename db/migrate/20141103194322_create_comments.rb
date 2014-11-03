class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    t.string :context
    t.belongs_to :user
    t.belongs_to :post
    t.belongs_to :comments
    t.timestamps
    end
  end
end
