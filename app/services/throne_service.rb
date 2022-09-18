class ThroneService
    
    def self.get_thrones
        response = conn.get("/throne_rooms")
        JSON.parse(response.body, symbolize_names: true)
    end
    
    def self.conn
        Faraday.new(url: "https://the-throne-room-api.herokuapp.com/api/v1")
    end
end