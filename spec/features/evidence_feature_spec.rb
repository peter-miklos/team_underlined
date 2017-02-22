require "rails_helper"

describe "Handling evidence" do
  it "should display evidence upon login" do
    visit '/evidence'
    expect(page).to have_content "No evidence yet."
  end

end
