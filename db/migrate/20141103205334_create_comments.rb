class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :user
      t.string :content
      t.belongs_to :submission, index: true
      t.belongs_to :comment, index: true
    end
  end
end
