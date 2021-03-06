class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest

      t.timestamps null: false
      
      t.index :name, unique: true 
    end
  end
end
