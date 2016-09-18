class AddTvProgramReservation < ActiveRecord::Migration
  def change
    add_column :users, :training_type, :string
    add_column :users, :training_count, :integer, default: 0
    add_column :users, :tv_program_id, :integer
  end
end
