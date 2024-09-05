#vist /plants/new
#fill_in plant_name
##fill_in scientific_name
#fill_in plant_description
#fill_in type drop down
#fill_in edible check box
#fill_in pet safe check box
#click add plant
#visit /plants
#exepect page to contain new plant


require 'rails_helper'

RSpec.feature "Create Plant", type: :feature do
  before :each do
    User.create!(
      email: "cindy12@example.com",
      username: "cindy",
      password: "password123"
    )

    visit user_session_path

    fill_in 'Email', with: 'cindy12@example.com'
    fill_in 'Password', with: 'password123'
    click_button 'Log in'
  end

  scenario "creates a new instance of the plant model" do
    visit new_plant_path
    expect(page).to have_content("Tell us about the plant!")

    fill_in 'Plant Name', with: 'Swiss Cheees Plant'
    fill_in 'Scientific Name', with: 'Monstera Deliciosa'
    fill_in 'Plant Description', with: 'Stylish and popular house plant with holey leaves'
    select "House Plant", from: "plant_plant_type"
    click_button 'Add Plant'
    expect(page).to have_content("Plant was successfully created.")
  end
end
