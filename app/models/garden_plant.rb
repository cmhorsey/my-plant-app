class GardenPlant < ApplicationRecord
  belongs_to :garden
  belongs_to :plant

  validates :quantity, numericality: { only_integer: true, greater_than: 0 }

  def formatted_plant_date
    created_at.strftime("%B %d, %Y")
  end
end
