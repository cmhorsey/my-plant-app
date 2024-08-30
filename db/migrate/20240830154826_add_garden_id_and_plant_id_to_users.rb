class AddGardenIdAndPlantIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :garden_id, :integer
    add_column :users, :plant_id, :integer
  end
end
