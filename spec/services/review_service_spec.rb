require 'rails_helper'

RSpec.describe ReviewService do 
  it 'gets data from api' do 
    reviews = ReviewService.get_reviews
    expect(reviews).to be_a(Array)

    review = reviews[0]
    #we don't have reviews data saved yet so there is
    #no review data to 'get' from the BE api
  end
end