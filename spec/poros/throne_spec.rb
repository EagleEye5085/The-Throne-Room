require 'rails_helper'

RSpec.describe Throne do
    it 'reads data into variables' do
        data =  {
            "id": "1",
            "type": "throne_room",
            "attributes": {
                "name": "mcdonalds",
                "address": "123 test st",
                "latitude": 10.1,
                "longitude": -1.1,
                "directions": "back of the store",
                "baby_changing_station": "false",
                "bathroom_style": "multi-stall F",
                "key_code_required": "true"
            }
        }

        throne = Throne.new(data)
        
        expect(throne).to be_a Throne
        expect(throne.name).to eq(data[:attributes][:name])
        expect(throne.id).to eq(data[:id])
        expect(throne.address).to eq(data[:attributes][:address])
        expect(throne.babystation).to eq(data[:attributes][:baby_changing_station])
        expect(throne.bathroomstyle).to eq(data[:attributes][:bathroom_style])
        expect(throne.directions).to eq(data[:attributes][:directions])
        expect(throne.lat).to eq(data[:attributes][:latitude])
        expect(throne.long).to eq(data[:attributes][:longitude])
    end
end