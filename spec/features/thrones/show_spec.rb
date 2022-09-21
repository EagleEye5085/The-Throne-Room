require 'rails_helper'

RSpec.describe "Thrones Show Page" do 
  it 'displays the throne room name, address, directions, baby-station, bathroom style, require key' do 

    data = {
            "id": "1",
            "type": "throne_room",
            "attributes": {
                "name": "mcdonalds",
                "address": "123 test st",
                "latitude": 10.1,
                "longitude": -1.1,
                "directions": "back of the store",
                "baby_changing_station": "false",
                "bathroom_style": "multi-stall F",
                "key_code_required": "true"
            }}
    @throne = Throne.new(data)

    visit "/thrones/#{@throne.id}"

    expect(page).to have_content("MCDONALDS")
    expect(page).to have_content("Address: 123 TEST ST")
    expect(page).to have_content("Directions: back of the store")
    expect(page).to have_content("Does it have a baby-changing station: false")
    expect(page).to have_content("Bathroom Style: multi-stall F")
    expect(page).to have_content("Does it require a keycode: true")
    expect(page).to_not have_content("latitude: 10.1")
    expect(page).to_not have_content("longitude: -1.1")
  end

  it "does not display a link to create a new throne room review if the user is NOT logged in" do 

    data = {
            "id": "1",
            "type": "throne_room",
            "attributes": {
                "name": "mcdonalds",
                "address": "123 test st",
                "latitude": 10.1,
                "longitude": -1.1,
                "directions": "back of the store",
                "baby_changing_station": "false",
                "bathroom_style": "multi-stall F",
                "key_code_required": "true"
            }}
    @throne = Throne.new(data)
    
    visit "/thrones/#{@throne.id}"
    
    expect(page).to_not have_link("Create New Review")

  end
end