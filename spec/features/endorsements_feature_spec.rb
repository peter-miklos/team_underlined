require 'rails_helper'

feature 'endorsements' do
  scenario 'viewing endorsement' do
    visit '/endorsements'
    expect(page).to have_content('You do not have any endorsements yet')
  end
end
