class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :title, null: false;
      t.string :url
      t.text :body
      t.belongs_to :user, null: false, index: true

      t.timestamps null: false
    end
  end
end
