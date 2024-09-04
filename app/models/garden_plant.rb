class GardenPlant < ApplicationRecord
  belongs_to :garden
  belongs_to :plant

  def formatted_plant_date
    created_at.strftime("%B %d, %Y")
  end
end
