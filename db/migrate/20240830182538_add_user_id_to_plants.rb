class AddUserIdToPlants < ActiveRecord::Migration[7.1]
  def change
    add_reference :plants, :user, null: false, foreign_key: true
  end
end
