class ReviewService
    
    def self.conn
        Faraday.new(url: "https://the-throne-room-api.herokuapp.com")
        # Faraday.new(url: "http://localhost:3000")
    end

    def self.get_reviews(id)
        response = conn.get("api/v1/throne_rooms/#{id}/reviews")
        JSON.parse(response.body, symbolize_names: true)[:data]
    end

    def self.send_review(params)
        # require 'pry'; binding.pry 
        response = conn.post("api/v1/throne_rooms/#{params["review"][:throne_room_id]}/reviews") do |thing|
            thing.params = params
        end
    end
end