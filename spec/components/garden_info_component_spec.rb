require "rails_helper"
require "view_component/test_helpers"

RSpec.describe GardenInfoComponent, type: :component do
  let(:user) { create(:user) }
  let(:plant) { create(:plant) }
  let(:garden) { create(:garden, user: user) }
  let(:garden_plant) { create(:garden_plant, garden: garden, plant: plant) }

  before do
    garden.garden_plants << garden_plant
    sign_in user
  end

  it "successfully renders the plants in the garden" do
    render_inline(GardenInfoComponent.new(garden: garden))

    expect(page).to have_css('h3', text: "Plants you'll find here:")
    expect(page).to have_css('ul li', text: garden_plant.plant.name)
    expect(page).to have_css('.button-8', text: "Water plant 💦")
  end
end
