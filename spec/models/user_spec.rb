require 'rails_helper'

RSpec.describe User do
  it 'has a username' do
    gardendoodle = User.new(username: 'gardendoodle')

    expect(gardendoodle.username).to eq('gardendoodle')
  end

  it 'can have many gardens' do
    gardendoodle = User.create(username: 'gardendoodle')
    Garden.create(name: 'vegetable garden', user: gardendoodle)
    Garden.create(name: 'herb garden', user: gardendoodle)

    expect(gardendoodle.gardens.count).to eq(2)
  end
end
