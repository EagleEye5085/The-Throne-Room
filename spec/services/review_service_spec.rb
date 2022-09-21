require 'rails_helper'

RSpec.describe ReviewService do 
  it 'gets data from api' do 
    reviews = ReviewService.get_reviews(2)
    expect(reviews).to be_a(Array)

    review = reviews[0][:attributes]
        
        expect(review[:cleanliness]).to be_a(Integer)
        expect(review[:ambiance]).to be_a(Integer)
        expect(review[:tp_quality]).to be_a(Integer)
        expect(review[:privacy]).to be_a(Integer)
        expect(review[:other_comments]).to be_a(String)
        expect(review[:throne_room_id]).to be_a(Integer)
        expect(review[:user_id]).to be_a(Integer)
  end
end