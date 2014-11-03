class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.string :content

      # t.parent :parent
      t.belongs_to :post
      t.belongs_to :user
      t.belongs_to :comment

      t.timestamps
    end
  end
end
