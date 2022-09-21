class Review
    attr_accessor   :user_id, 
                    :id, 
                    :tp_quality,
                    :cleanliness,
                    :privacy,
                    :ambiance,
                    :accessibility,
                    :other_comments
    def initialize(data)
        @user_id = data[:user_id]
        @id = data[:id]
        @tp_quality = data[:tp_quality]
        @cleanliness = data[:cleanliness]
        @privacy = data[:privacy]
        @ambiance = data[:ambiance]
        @accessibility = data[:accessibility]
        @other_comments = data[:other_comments]
    end
end

