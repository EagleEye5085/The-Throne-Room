require 'rails_helper'

RSpec.describe ReviewService do 
  it 'gets data from api' do 
    reviews = ReviewService.get_reviews
    expect(reviews).to be_a(Array)
    #will need to beef up this test once BE has the review data
  end
end