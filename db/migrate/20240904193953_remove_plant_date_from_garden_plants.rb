class RemovePlantDateFromGardenPlants < ActiveRecord::Migration[7.1]
  def change
    remove_column :garden_plants, :plant_date, :date
  end
end
