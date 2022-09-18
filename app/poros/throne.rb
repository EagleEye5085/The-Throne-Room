class Throne
    attr_reader :name, :id, :lat, :long, :address, :directions, :babystation, :bathroomstyle, :keycode
    
    def initialize(data)
        @name = data[:attributes][:name]
        @id = data[:id]
        @lat = data[:attributes][:latitude]
        @long = data[:attributes][:longitude]
        @address = data[:attributes][:address]
        @directions = data[:attributes][:directions]
        @babystation = data[:attributes][:baby_changing_station]
        @bathroomstyle = data[:attributes][:bathroom_style]
        @keycode = data[:attributes][:key_code_required]
    end
end