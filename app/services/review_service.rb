class ReviewService
    
    def self.conn
        Faraday.new(url: "https://the-throne-room-api.herokuapp.com")
    end

    def self.get_reviews
        response = conn.get("/api/v1/reviews")
        JSON.parse(response.body, symbolize_names: true)[:data]
    end
    
    def self.create_review
        response = conn.post("/api/v1/reviews")
        JSON.parse(response.body, symbolize_names: true)[:data]
    end

    def self.send_review(params)
        response = conn.post("/api/v1/reviews") do |thing|
            thing.params = params
        end
    end
end