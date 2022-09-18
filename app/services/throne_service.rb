class ThroneService
    
    def self.conn
        Faraday.new(url: "https://the-throne-room-api.herokuapp.com")
    end

    def self.get_thrones
        response = conn.get("/api/v1/throne_rooms")
        JSON.parse(response.body, symbolize_names: true)[:data]
    end
    
end