require 'rails_helper'

feature 'endorsements' do
  scenario 'viewing endorsement' do
    visit '/endorsements'
    expect(page).to have_content('You do not have any endorsements yet')
  end

  scenario 'creating endorsements' do
    visit '/endorsements'
    click_button 'Create endorsements'
    expect(current_path).to eq '/endorsements/new'
    fill_in "Headline", with: "Great contribution to the project"
    fill_in "Name", with: "Amanda"
    fill_in "Description", with: "Really enjoyed working with Amanda"
    fill_in "Category", with: "teamwork, innovation"
    click_button "Submit"
    expect(current_path).to eq "/endorsements"
    expect(page).not_to have_content('You do not have any endorsements yet')
    expect(page).to have_content("Endorsements you've received:")
    expect(page).to have_content("Amanda: Great contribution to project")
  end
end
