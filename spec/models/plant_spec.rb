require 'rails_helper'

RSpec.describe Plant do
  subject(:snake_plant) { Plant.new(
    name: 'Snake Plant',
    scientific_name: 'Dracaena trifasciata',
    plant_type: 'House Plant',
    edible: false,
    pet_safe: true
    ) }

  it { is_expected.to have_attributes(name: 'Snake Plant') }
  it { is_expected.to have_attributes(scientific_name: 'Dracaena trifasciata') }
  it { is_expected.to have_attributes(plant_type: 'House Plant') }
  it { is_expected.to have_attributes(edible: false) }
  it { is_expected.to have_attributes(pet_safe: true) }
end
