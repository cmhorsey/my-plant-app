class CreateGardens < ActiveRecord::Migration[7.1]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :location
      t.text :notes

      t.timestamps
    end
  end
end
