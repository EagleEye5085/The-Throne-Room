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
        @user_id = data[:attributes][:user_id]
        @id = data[:id]
        @tp_quality = data[:attributes][:tp_quality]
        @cleanliness = data[:attributes][:cleanliness]
        @privacy = data[:attributes][:privacy]
        @ambiance = data[:attributes][:ambiance]
        @accessibility = data[:attributes][:accessibility]
        @other_comments = data[:attributes][:other_comments]
    end
end

