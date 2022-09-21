require 'rails_helper'

RSpec.describe ReviewFacade do 
  it 'reads data from api' do 
    reviews = ReviewFacade.all_reviews

    expect(reviews).to be_a(Array)
    expect(reviews).to be_all(Review)
  end

  it 'creates a review for a bathroom from user input' do 
    data = {"reviews" => {user_id: "1", 
                          throne_room_id: "1", 
                          tp_quality: "3", 
                          cleanliness: "4", 
                          privacy: "2", 
                          ambiance: "3", 
                          accessibility: "5", 
                          other_comments: "I love reviewing bathrooms!"}
                        }
                        
    expect(data).to be_a(Hash)
    expect(data).to have_key("reviews")
    expect(data["reviews"]).to have_key(:user_id)
    expect(data["reviews"][:user_id]).to eq("1")
    expect(data["reviews"][:tp_quality]).to eq("3")
    expect(data["reviews"][:cleanliness]).to eq("4")
    expect(data["reviews"][:privacy]).to eq("2")
    expect(data["reviews"][:ambiance]).to eq("3")
    expect(data["reviews"][:accessibility]).to eq("5")
    expect(data["reviews"][:other_comments]).to eq("I love reviewing bathrooms!")
    
  end
end