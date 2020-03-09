require "rails_helper"

RSpec.feature "Guest user visiting website", :type => :feature do
  scenario "As a guest user, I should be able to visit website" do
    visit "/"

    expect(page).to have_text("Welcome to world of Widgets for Social Application")
  end
end

