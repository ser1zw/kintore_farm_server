class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :password
      t.string :name
      t.integer :point
    end
    add_index :users, :login_id, unique: true
  end
end
