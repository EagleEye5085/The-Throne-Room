require 'rails_helper'

RSpec.describe ThroneService do
    it 'gets data from api' do
        thrones = ThroneService.get_thrones
        expect(thrones).to be_a(Array)
        
        throne = thrones[0][:attributes]
        
        expect(throne[:name]).to be_a(String)
        expect(throne[:address]).to be_a(String)
        expect(throne[:latitude]).to be_a(Float)
        expect(throne[:longitude]).to be_a(Float)
        expect(throne[:directions]).to be_a(String)
        expect(throne[:baby_changing_station]).to be_a(String)
        expect(throne[:bathroom_style]).to be_a(String)
        expect(throne[:key_code_required]).to be_a(String)
    end

    it 'sends data to api' do 
        data = {"throne_room" => {name: "mcdonalds",
            address: "123 Test St",
            directions: "over there",
            baby_changing_station: "1",
            bathroom_style: "porta-potty",
            key_code_required: "0"}
        }
        throne = ThroneService.send_throne(data)
        expect(throne.status).to eq(201)
        expect(throne.reason_phrase).to eq("Created")
    end
end