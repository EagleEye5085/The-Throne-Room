require 'rails_helper'

RSpec.describe Review do 
  it 'reads data into variables' do 
    data = {
            "user_id": "1",
            "id": "1",
            "tp_quality": "2",
            "cleanliness": "2",
            "privacy": "3",
            "ambiance": "2",
            "accessibility": "4",
            "other_comments": "What a great app!"
            }
      
    review = Review.new(data)

    expect(review).to be_a(Review)
    expect(review.user_id).to eq("1")
    expect(review.id).to eq("1")
    expect(review.tp_quality).to eq("2")
    expect(review.cleanliness).to eq("2")
    expect(review.privacy).to eq("3")
    expect(review.ambiance).to eq("2")
    expect(review.accessibility).to eq("4")
    expect(review.other_comments).to eq("What a great app!")
  end
end