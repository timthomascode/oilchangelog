require 'rails_helper'

feature "User can create an account" do
  scenario "with email and password" do
    visit root_path
    click_on "Sign up"
    fill_in "Email",	with: "someone@something.com" 
    fill_in "Password",	with: "password" 
    click_on "Sign up"

    expect(page).to have_content 'someone@something.com'
  end
end