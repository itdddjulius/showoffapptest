require "rails_helper"

RSpec.feature "Guest user should be able to login", :type => :feature do
  before do
    stub_authentication
  end

  scenario "As a guest user, I should be able to login with valid credential" do
    visit "/"
    expect(page).to have_text("Sign in")
    click_link "Sign in"
    expect(page).to have_text("Please sign in")
    fill_in "user[email]", with: "abhishekpshukla+a1@gmail.com"
    fill_in "user[password]", with: "password"
    click_button "Login"
    expect(page).to have_text("List of visible widgets")
  end
end
