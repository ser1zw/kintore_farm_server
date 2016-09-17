class CreateTrainingHistories < ActiveRecord::Migration
  def change
    create_table :training_histories do |t|
      t.string :login_id
      t.string :datetime
      t.string :type
      t.integer :count
    end
    add_index :training_histories, :login_id
    add_index :training_histories, :datetime
  end
end
