class ReviewService
    
    def self.conn
        Faraday.new(url: "https://the-throne-room-api.herokuapp.com")
    end

    def self.get_reviews
        response = conn.get("/api/v1/reviews")
        JSON.parse(response.body, symbolize_names: true)[:data]
    end
    
    def self.create_review
        ##will we need this method for posting a new review to the BE?
        response = conn.post("/api/v1/reviews")
        JSON.parse(response.body, symbolize_names: true)[:data]
    end
end