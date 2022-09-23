# require 'rails_helper'

# RSpec.describe "Review New" do 
#   it "has a form to create a new review for an existing throne" do 
#       data = {
#             "id": "1",
#             "type": "throne_room",
#             "attributes": {
#                 "name": "mcdonalds",
#                 "address": "123 test st",
#                 "latitude": 10.1,
#                 "longitude": -1.1,
#                 "directions": "back of the store",
#                 "baby_changing_station": "false",
#                 "bathroom_style": "multi-stall F",
#                 "key_code_required": "true"
#             }}
#     @throne = Throne.new(data)

#     visit "/thrones/#{@throne.id}/reviews/new"

#     expect(page).to have_content("Leave a Review")
#     expect(page).to have_content("Cleanliness")
#     expect(page).to have_content("Quality of Toilet Paper")
#     expect(page).to have_content("Privacy")
#     expect(page).to have_content("Ambiance")
#     expect(page).to have_content("Comments")
#   end

#   it "redirects to a reviews show page when a user submits a new review" do 
#     data = {
#             "id": "1",
#             "type": "throne_room",
#             "attributes": {
#                 "name": "mcdonalds",
#                 "address": "123 test st",
#                 "latitude": 10.1,
#                 "longitude": -1.1,
#                 "directions": "back of the store",
#                 "baby_changing_station": "false",
#                 "bathroom_style": "multi-stall F",
#                 "key_code_required": "true"
#             }}
#     @throne = Throne.new(data)
    
#     visit "/reviews/#{@throne.id}/new"

#     fill_in "Cleanliness", with: 1
#     fill_in "Quality of Toilet Paper", with: 3
#     fill_in "Privacy", with: 2
#     fill_in "Ambiance", with: 3
#     fill_in "Accessibility", with: 4
#     fill_in "Comments", with: "A standard bathroom"

#     click_button "Submit"

#     expect(current_path).to eq("/thrones/#{@throne.id}/reviews")
#   end
# end

#due to DB issues on back end side these tests haven't been run yet