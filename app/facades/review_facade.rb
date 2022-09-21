class ReviewFacade
    def self.all_reviews
      reviews = ReviewService.get_reviews
        reviews.map do |review|
            Review.new(review)
        end
    end

    def self.send(params)
      review = ReviewService.send_review(params)
    end
end