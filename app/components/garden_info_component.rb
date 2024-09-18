class GardenInfoComponent < ViewComponent::Base
  attr_reader :garden

  def initialize(garden:)
    super
    @garden = garden
  end

  def formatted_plant_date(gardenplant)
    gardenplant.created_at.strftime("%B %d, %Y")
  end
end
