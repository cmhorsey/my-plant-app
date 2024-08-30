class RemoveUserIdFromPlants < ActiveRecord::Migration[7.1]
  def change
    remove_column :plants, :user_id, :integer
  end
end
