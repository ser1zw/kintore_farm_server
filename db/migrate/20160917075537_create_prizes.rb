class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :name
      t.string :description
      t.integer :point
      t.string :image_url
    end
  end
end
