require "rails_helper"

describe "Handling evidence" do
  it "should display evidence upon login" do
    visit '/evidences'
    expect(page).to have_content "No achievements yet."
  end
end

describe "creating evidence" do
  it "should allow the user to add evidence" do
    visit "/evidences"
    expect(page).to have_content "No achievements yet."
    expect(page).to have_link "Add achievement"
    click_link("Add achievement")
    expect(page).to have_content "Achievement"
    fill_in "Headline", with: "Attended career fair"
    fill_in "Description", with: "Attended UCL career fair to represent HSBC IT. Spoke with a load of grads."
    fill_in "Category", with: "Sponsorship, Role Model"
    fill_in "Date achieved", with: "2017-01-21"
    click_button "Submit"
    expect(page).to have_content "Attended career fair"
    expect(page).to have_content "Sponsorship, Role Model"
    expect(page).to have_content "Attended UCL care..."
  end
end

describe "viewing evidence" do
  it "should allow the user to view evidence" do
  create_endorsement
  expect(page).to have_content " "
  end
end
