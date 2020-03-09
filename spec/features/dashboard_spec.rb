require "rails_helper"
require_relative "../support/stub_login"

RSpec.feature "Guest user should be able to login", js: true do
  include StubLogin
  before do
    stub_authentication
    page.set_rack_session(user: current_user)
  end

  # scenario "As a guest user, I should be able to login with valid credential" do
  #   visit "/dashboard"
  #   expect(page).to have_text("List of visible widgets")
  # end

  # scenario "As a logged in user, I should be able to search visible widgets on landing page." do
  #   visit "/dashboard"
  #   expect(page).to have_text("List of visible widgets")
  #   fill_in "search", with: "Visible"
  #   click_button "Search"
  #   expect(page).to have_text("A Visible Widget")
  # end
end

