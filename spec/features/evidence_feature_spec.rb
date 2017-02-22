require "rails_helper"

describe "Handling evidence" do
  it "should display evidence upon login" do
    visit '/evidences'
    expect(page).to have_content "No evidence yet."
  end
end

describe "creating evidence" do
  it "should allow the user to add evidence" do
    visit "/evidences"
    expect(page).to have_content "No evidence yet."
    expect(page).to have_link "Add evidence"
    click_link("Add evidence")
    expect(page).to have_content "Evidence"
    fill_in "Headline", with: "Attended career fair"
    fill_in "Description", with: "Attended UCL career fair to represent HSBC IT. Spoke with a load of grads."
    fill_in "Category", with: "Sponsorship, Role Model"
    fill_in "Date achieved", with: "2017-01-21"
    click_button "Create Evidence"
    expect(page).to have_content "Attended career fair"
    expect(page).to have_content "Sponsorship, Role Model"
    expect(page).to have_content "Attended UCL care..."
  end
end
