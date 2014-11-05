class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :submission, index: true
      t.belongs_to :comment, index: true
      t.belongs_to :user, index: true
    end
  end
end
