require 'rails_helper'
require 'web_helpers'

feature 'endorsements' do
  context 'when you have no endorsements' do
    scenario 'viewing endorsement' do
      visit '/endorsements'
      expect(page).to have_content('You do not have any endorsements yet')
    end
  end

  context "creating endorsement" do
    it "should allow the user to create an endorsement on an achievement" do
      create_endorsement
      expect(page).to have_content "Great contribution to the project"
      expect(page).to have_content "Really enjoyed wo..."
    end
  end


  context "when you have endorsements" do
    before do
      Endorsement.create(headline: "Great contribution to the project",
      name: "Amanda",
      description: "Really enjoyed working with Amanda",
      category: "teamwork, innovation",
      date_achieved: Date.new)
    end
    scenario 'viewing your endorsements' do
      visit '/endorsements'
      expect(page).not_to have_content('You do not have any endorsements yet')
      expect(page).to have_content("Endorsements you've received:")
      expect(page).to have_content("Great contribution to the project")
    end
    scenario 'can click on an endorsement headline' do
      visit '/endorsements'
      click_link "Great contribution to the project"
      expect(page).to have_content("Really enjoyed working with Amanda")
    end
  end
end
