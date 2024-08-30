class CreatePlants < ActiveRecord::Migration[7.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :scientific_name
      t.string :plant_type
      t.boolean :edible
      t.boolean :pet_safe

      t.timestamps
    end
  end
end
