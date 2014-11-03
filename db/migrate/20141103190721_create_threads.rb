class CreateThreads < ActiveRecord::Migration
  def change
    create_table :threads do |t|
      t.string :title
      t.string :url
      t.text :content
      t.integer :points
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
