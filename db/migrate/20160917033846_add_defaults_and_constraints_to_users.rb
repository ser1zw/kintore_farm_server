class AddDefaultsAndConstraintsToUsers < ActiveRecord::Migration
  def change
    add_index :users, :login_id, unique: true
    change_column_default :users, :point, 0
    change_column_default :users, :pushup_count, 0
    change_column_default :users, :situp_count, 0
    change_column_default :users, :squat_count, 0
  end
end
