class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text  :content, null: false
      t.belongs_to :user, null: false
      t.belongs_to  :submission, null: false

      t.timestamps null: false
    end
  end
end
