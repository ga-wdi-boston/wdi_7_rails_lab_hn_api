class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.reference :user
      t.reference :submission
      t.reference :comment
    end
  end
end
