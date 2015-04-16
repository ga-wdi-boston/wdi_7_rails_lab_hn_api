class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title, null: false
      t.text :content
      t.string :url
      t.belongs_to :user, index: true, null: false

      t.timestamps null: false
    end
  end
end
