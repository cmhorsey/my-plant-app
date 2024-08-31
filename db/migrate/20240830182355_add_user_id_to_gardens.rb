class AddUserIdToGardens < ActiveRecord::Migration[7.1]
  def change
    add_reference :gardens, :user, null: false, foreign_key: true
  end
end
