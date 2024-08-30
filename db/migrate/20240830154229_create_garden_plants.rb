class CreateGardenPlants < ActiveRecord::Migration[7.1]
  def change
    create_table :garden_plants do |t|
      t.references :garden, null: false, foreign_key: true
      t.references :plant, null: false, foreign_key: true
      t.date :plant_date
      t.integer :quantity
      t.date :last_watered

      t.timestamps
    end
  end
end
