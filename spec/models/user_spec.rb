require 'rails_helper'

RSpec.describe User do
  it 'has a username' do
    gardendoodle = User.new(username: 'gardendoodle')

    expect(gardendoodle.username).to eq('gardendoodle')
  end
end
