require 'rails_helper'

RSpec.describe User do
  it 'has a username' do
    gardendoodle = User.new(username: 'gardendoodle')

    expect(gardendoodle.username).to eq('gardendoodle')
  end

  it 'can have many gardens' do
    gardendoodle = User.create(username: 'gardendoodle')
    gardendoodle.gardens.create(name: 'vegetable garden')
    gardendoodle.gardens.create(name: 'herb garden')

    expect(gardendoodle.gardens.count).to eq(2)
  end
end
