class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.belongs_to :user, null: false
      t.boolean :link, null: false
      t.string :link_url
      t.string :body
      t.integer :karma
      t.integer :weight

      t.timestamps null: false
    end
  end
end
