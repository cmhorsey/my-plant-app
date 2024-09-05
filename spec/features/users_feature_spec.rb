require 'rails_helper'

RSpec.feature "Logs User In", type: :feature do
  before :each do
    User.create!(
      email: "cindy12@example.com",
      username: "cindy",
      password: "password123"
    )
  end

  scenario "log-in" do
    visit user_session_path
    expect(page).to have_content("Log in")

    fill_in 'Email', with: 'cindy12@example.com'
    fill_in 'Password', with: 'password123'
    click_button 'Log in'
    expect(page).to have_content("Signed in successfully.")
  end
end
