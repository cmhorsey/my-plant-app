require 'rails_helper'

RSpec.describe Garden do
  subject(:nightshade_bed) { Garden.new(
    name: 'Nightshade Bed',
    location: 'Backyard',
    notes: 'Full sun garden bed suitable for nightshades',
    ) }

  it { is_expected.to have_attributes(name: 'Nightshade Bed') }
  it { is_expected.to have_attributes(location: 'Backyard') }
  it { is_expected.to have_attributes(notes: 'Full sun garden bed suitable for nightshades') }
end
