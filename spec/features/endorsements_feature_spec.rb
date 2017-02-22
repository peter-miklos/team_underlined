require 'rails_helper'

feature 'endorsements' do
  context 'when you have no endorsements' do
    scenario 'viewing endorsement' do
      visit '/endorsements'
      expect(page).to have_content('You do not have any endorsements yet')
    end
  end

  context "when you have endorsements" do
    scenario 'viewing your endorsements' do
      endorsement = Endorsement.create(headline: "Great contribution to the project",
      name: "Amanda",
      description: "Really enjoyed working with Amanda",
      category: "teamwork, innovation",
      date_achieved: Date.new)
      visit '/endorsements'
      expect(page).not_to have_content('You do not have any endorsements yet')
      expect(page).to have_content("Endorsements you've received:")
      expect(page).to have_content("Great contribution to the project")
    end
  end
end
