class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false 
      t.string :email, null: false
      t.string :password, null: false
      t.timestamps null: false
    end
    add_index :name, :email, unique: true
  end
end
