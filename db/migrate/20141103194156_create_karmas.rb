class CreateKarmas < ActiveRecord::Migration
  def change
    create_table :karmas do |t|
      t.integer :karma, null: false
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true

      t.timestamps null: false
    end
  end
end
