#When I visit "/" then I see a 
#link to 'Create a New Bathroom" 
#when I click on that link I am taken to 
#a form with the following fields:
  #location 
  #directions 
  #baby changing station y/n
  #bathroom style (gender-neutral, multi-stall womens, mulsti-stall mens, single F, single M, porta-potty)
  #key code needed y/n
#and then I submit the form and I am redirected to 
#a bathroom show page where I now see my newly created bathroom 

require 'rails_helper'

RSpec.describe "New Throne room (registration)" do 
  it "displays a link to 'Create a New Throne room' from landing page" do

    visit "/"

    click_link("Create New Throne Room")

    expect(current_path).to eq('/thrones/new')
    expect(page).to have_content("Location")
    expect(page).to have_content("Directions")
    expect(page).to have_content("Baby changing station?")
    expect(page).to have_content("Throne style")
    expect(page).to have_content("Key code?")
  end
end