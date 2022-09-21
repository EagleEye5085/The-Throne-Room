#and then I submit the form and I am redirected to 
#a bathroom show page where I now see my newly created bathroom 

require 'rails_helper'

RSpec.describe "New Throne room (registration)" do 
  it "displays a link to 'Create a New Throne room' from landing page only for logged in users" do

    visit "/thrones/new"
    # user = current_user #how can we test for this functionality
    # click_link("Create New Throne Room")

    expect(current_path).to eq('/thrones/new')
    expect(page).to have_content("Location")
    expect(page).to have_content("Directions")
    expect(page).to have_content("Baby changing station?")
    expect(page).to have_content("Throne Style")
    expect(page).to have_content("Key Code?")
    expect(page).to have_button("Register New Throne")
  end

  # it "redirects to a bathroom show page where the user can see their newly created bathroom" 
  #is this right? Where do we want this to redirect to?
end