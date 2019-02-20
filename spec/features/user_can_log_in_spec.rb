require 'rails_helper'

feature 'User can log in' do
  scenario "when using correct credentials" do
    User.create(email: "someone@something.com", password: "password")
    visit root_path
    fill_in "Email",	with: "someone@something.com" 
    fill_in "Password",	with: "password" 
    click_on "Sign in"

    expect(page).to have_content 'Add Vehicle'
  end
end
