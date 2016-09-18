class CreateTvPrograms < ActiveRecord::Migration
  def change
    create_table :tv_programs do |t|
      t.string :title
      t.string :description
      t.string :start_datetime
      t.string :end_datetime
      t.string :image_url
    end
    add_index :tv_programs, :start_datetime
  end
end
