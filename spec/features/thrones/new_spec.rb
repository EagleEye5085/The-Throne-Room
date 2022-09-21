#and then I submit the form and I am redirected to
#a bathroom show page where I now see my newly created bathroom

require 'rails_helper'

RSpec.describe "New Throne room (registration)" do
  it "displays a link to 'Create a New Throne room' from landing page only for logged in users" do

    visit "/thrones/new"
    # user = current_user #how can we test for this functionality
    # click_link("Create New Throne Room")

    expect(current_path).to eq('/thrones/new')
    expect(page).to have_content("Name of Location")
    expect(page).to have_content("Address")
    expect(page).to have_content("Directions")
    expect(page).to have_content("Baby changing station?")
    expect(page).to have_content("Throne Style")
    expect(page).to have_content("Key Code?")
    expect(page).to have_button("Register New Throne")
  end

  it "can create a new throne" do

    visit "/thrones/new"
    # user = current_user #how can we test for this functionality
    # click_link("Create New Throne Room")

    fill_in "Name of Location", with: "Gaylord of the Rockies Resort"
    fill_in "Address", with: "6700 N Gaylord Rockies Blvd, Aurora, CO 80019"
    fill_in "Directions", with: "Literaly bathrooms everywhere."
    choose(:baby_changing_station, option: 'true')
    choose(:bathroom_style, option: 'gender-neutral')
    choose(:key_code_required, option: 'true')

    click_on 'Register New Throne'
    expect(current_path).to eq('/')
  end

  # it "redirects to a bathroom show page where the user can see their newly created bathroom"
  #is this right? Where do we want this to redirect to?
end
