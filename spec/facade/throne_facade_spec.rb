require 'rails_helper'

RSpec.describe ThroneFacade do
    it 'reads data from api' do
        thrones = ThroneFacade.create_thrones
        
        expect(thrones).to be_a Array
        expect(thrones).to be_all Throne
    end
end