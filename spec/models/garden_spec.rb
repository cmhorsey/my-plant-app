require 'rails_helper'

RSpec.describe Garden do
  describe 'Factory' do
    it 'is creates a valid Garden' do
      garden = FactoryBot.build(:garden)
      expect(garden).to be_valid
    end
  end

  subject(:nightshade_bed) { Garden.new(
    name: 'Nightshade Bed',
    location: 'Backyard',
    notes: 'Full sun garden bed suitable for nightshades',
    ) }

  it { is_expected.to have_attributes(name: 'Nightshade Bed') }
  it { is_expected.to have_attributes(location: 'Backyard') }
  it { is_expected.to have_attributes(notes: 'Full sun garden bed suitable for nightshades') }
end
