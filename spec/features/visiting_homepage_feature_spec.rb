require 'rails_helper'

feature "visiting the homepage" do
  scenario "the user sees a list of songs and can view them" do

    visit "/"

    within(".all-songs") do
      expect(page).to have_content click_link("Add Song")
    end

    expect(page).to have_current_path song_path
  end

end