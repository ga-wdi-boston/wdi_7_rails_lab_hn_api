class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.text :about
      t.string :email, null: false
      t.integer :karma, default: 0

      t.timestamps null: false
    end
  end
end
