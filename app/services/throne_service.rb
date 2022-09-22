class ThroneService

    def self.conn
        Faraday.new(url: "https://the-throne-room-api.herokuapp.com")
        # Faraday.new(url: "http://localhost:3000")
    end

    def self.get_thrones
        response = conn.get("api/v1/throne_rooms/last_five")
        JSON.parse(response.body, symbolize_names: true)[:data]
    end

    def self.send_throne(params)
        response = conn.post("/api/v1/throne_rooms") do |thing|
            thing.params = params
        end
    end

    def self.all_thrones
      response = conn.get("/api/v1/throne_rooms")
      JSON.parse(response.body, symbolize_names: true)[:data]
    end
end
