require 'rails_helper'

feature "User can't log in" do
  scenario "when using incorrect credentials" do
    User.create(email: "someone@something.com", password: "password")
    visit root_path
    fill_in "Email",	with: "someone@something.com" 
    fill_in "Password",	with: "password2" 
    click_on "Sign in"

    expect(page).to have_content 'Sign in'
  end
end
