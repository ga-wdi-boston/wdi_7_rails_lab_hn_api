class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :article
      t.belongs_to :comment
      t.string :message

      t.timestamps null: false
    end
  end
end
