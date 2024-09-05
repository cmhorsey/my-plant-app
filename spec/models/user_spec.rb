require 'rails_helper'

RSpec.describe User do
  it 'has a username' do
    gardendoodle = User.new(username: 'gardendoodle')

    expect(gardendoodle.username).to eq('gardendoodle')
  end

  describe 'Factory' do
    it 'is creates a valid User' do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end
  end
end
