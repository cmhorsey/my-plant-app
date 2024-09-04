require 'rails_helper'

RSpec.describe GardenPlant, type: :model do
  describe 'Factory' do
    it 'is creates a valid GardenPlant' do
      gardenplant = FactoryBot.build(:garden_plant)
      expect(gardenplant).to be_valid
    end
  end

  subject { GardenPlant.new(
    plant_date: Date.today,
    quantity: 2,
    last_watered: Date.today
  ) }

  let(:current_date) { Date.today }

  it { is_expected.to have_attributes(plant_date: current_date) }
  it { is_expected.to have_attributes(quantity: 2) }
  it { is_expected.to have_attributes(last_watered: current_date) }
end
