class ReviewsController < ApplicationController
    def index
    end

    def new
        user = current_user
        @user_id = user.id
        @throne_room_id = params[:id]
    end
    
    def create
        not_params = {"review" => {user_id: params[:user_id], throne_room_id: params[:id], tp_quality: params[:tp_quality], cleanliness: params[:cleanliness], privacy: params[:privacy], ambiance: params[:ambiance], accessibility: params[:accessibility], other_comments: params[:other_comments]}}
        ReviewFacade.send(not_params)
        redirect_to "/thrones/#{params[:id]}"
    end
end
