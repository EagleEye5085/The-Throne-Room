class ReviewFacade
    def self.all_reviews
      reviews = ReviewService.get_reviews
      # require 'pry'; binding.pry 
        reviews.map do |review|
            Review.new(review)
        end
    end
    
###creates a new review
    def self.new_review(user_id)
      review = ReviewService.create_review(user_id)
      Review.new(review)
    end

    def self.send(params)
      review = ReviewService.send_review(params)
    end
end