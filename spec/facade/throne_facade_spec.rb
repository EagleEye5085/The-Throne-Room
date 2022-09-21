require 'rails_helper'

RSpec.describe ThroneFacade do
    it 'reads data from api' do
        thrones = ThroneFacade.create_thrones
        
        expect(thrones).to be_a Array
        expect(thrones).to be_all Throne
    end

    it 'can create and send a new throne from user input' do 
        data = {"throne_room" => {name: "mcdonalds",
                                    address: "123 Test St",
                                    directions: "over there",
                                    baby_changing_station: "1",
                                    bathroom_style: "porta-potty",
                                    key_code_required: "0"}
                                }
                                    
        expect(data).to be_a(Hash)
        expect(data).to have_key("throne_room")
        expect(data["throne_room"]).to have_key(:name)
        expect(data["throne_room"][:name]).to eq("mcdonalds")
        expect(data["throne_room"][:address]).to eq("123 Test St")
        expect(data["throne_room"][:directions]).to eq("over there")
        expect(data["throne_room"][:baby_changing_station]).to eq("1")
        expect(data["throne_room"][:key_code_required]).to eq("0")
    end
end