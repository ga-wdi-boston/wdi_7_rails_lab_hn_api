class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text  :content
      t.belongs_to :user
      t.belongs_to  :submission
      t.belongs_to :comment, index: true

      t.timestamps null: false
    end
  end
end
