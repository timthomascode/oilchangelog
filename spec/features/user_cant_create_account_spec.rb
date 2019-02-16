require 'rails_helper'

feature "User can't create an account" do
  scenario "if email is already registered" do
    User.create(email: "someone@something.com", password: "password")
    visit root_path
    click_on "Sign up"
    fill_in "Email",	with: "someone@something.com" 
    fill_in "Password",	with: "password" 
    click_on "Sign up"

    expect(page).to have_content 'Email has already been taken'
  end

  scenario "if password is blank" do
    visit root_path
    click_on "Sign up"
    fill_in "Email", with: "someone_else@something.com"
    click_on "Sign up"

    expect(page).to have_content "Password can't be blank"
  end
end