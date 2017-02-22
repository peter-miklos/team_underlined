def create_achievement
  visit "/evidences"
  click_link("Add achievement")
  fill_in "Headline", with: "Attended career fair"
  fill_in "Description", with: "Attended UCL career fair to represent HSBC IT. Spoke with a load of grads."
  fill_in "Category", with: "Sponsorship, Role Model"
  fill_in "Date achieved", with: "2017-01-21"
  click_button "Submit"
end

def create_endorsement
  create_achievement
  click_link "Endorse"
  fill_in "Headline", with: "Great contribution to the project"
  fill_in "Description", with: "Really enjoyed working with Amanda"
  fill_in "Category", with: "Teamwork, Innovation"
  fill_in "Date achieved", with: "2017-01-21"
  click_button "Submit"
end
