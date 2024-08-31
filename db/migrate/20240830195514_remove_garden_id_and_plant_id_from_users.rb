class RemoveGardenIdAndPlantIdFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :garden_id, :integer
    remove_column :users, :plant_id, :integer
  end
end
