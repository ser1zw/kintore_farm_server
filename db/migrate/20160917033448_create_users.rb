class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :password
      t.string :name
      t.integer :point
      t.integer :pushup_count
      t.integer :situp_count
      t.integer :squat_count
    end
  end
end
