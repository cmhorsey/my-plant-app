require 'rails_helper'

RSpec.feature "Create Plant", type: :feature do
  scenario "creates a new instance of the plant model" do
    login

    visit new_plant_path

    expect(page).to have_content("Tell us about the plant!")

    fill_in 'Plant Name', with: 'Swiss Cheees Plant'
    fill_in 'Scientific Name', with: 'Monstera Deliciosa'
    fill_in 'Plant Description', with: 'Stylish and popular house plant with holey leaves'
    select "House Plant", from: "plant_plant_type"

    click_button 'Add Plant'

    expect(page).to have_content("Plant was successfully created.")
  end

  def login
    user = create(:user)

    visit user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end
end
