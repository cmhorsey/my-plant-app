require "rails_helper"
require "view_component/test_helpers"

RSpec.describe GardenInfoComponent, type: :component do
  let(:user) { create(:user) }
  let(:plant) { create(:plant) }
  let(:garden) { create(:garden, user: user) }
  let(:garden_plant) { create(:garden_plant, garden: garden, plant: plant, created_at: Date.new(2024, 9, 1)) }

  before do
    garden.garden_plants << garden_plant
    sign_in user
    render_inline(GardenInfoComponent.new(garden: garden))
  end

  it "successfully renders the plants in the garden" do
    expect(page).to have_css('h3', text: "Plants you'll find here:")
    expect(page).to have_css('ul li', text: garden_plant.plant.name)
    expect(page).to have_css('.button-8', text: "Water plant 💦")
  end


  it "formats the plant date correctly" do
    expect(page).to have_css('span', text: "September 01, 2024")
  end
end
