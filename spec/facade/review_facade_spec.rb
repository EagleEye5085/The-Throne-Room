require 'rails_helper'

RSpec.describe ReviewFacade do 
  it 'reads data from api' do 
    reviews = ReviewFacade.all_reviews

    expect(reviews).to be_a(Array)
    expect(reviews).to be_all(Review)
  end
end