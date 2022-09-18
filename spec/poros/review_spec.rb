require 'rails_helper'

RSpec.describe Review do 
  it 'reads data into variables' do 
    data = {
    
    }
    #data is empty hash right now, need to update
    review = Review.new(data)

    expect(review).to be_a(Review)
  end
end