class RenameTrainingHistoriesColumnName < ActiveRecord::Migration
  def change
    rename_column :training_histories, :type, :training_type
  end
end
