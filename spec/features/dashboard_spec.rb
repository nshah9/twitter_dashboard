require 'rails_helper'

feature 'Dashboard' do
  scenario "Search for a user's twitter feed" do
    visit root_path
    fill_in 'Search User Handle', with: 'SrBachchan'
    click_button 'Search'
    expect(page).to have_content 'My first tweet'
  end
end
