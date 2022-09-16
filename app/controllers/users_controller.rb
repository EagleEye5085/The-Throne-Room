class UsersController < ApplicationController
    def create
        auth = request.env['omniauth.auth']
        user = User.find_or_create_by(email: auth[:info][:email])
        session[:user_token] = auth[:credentials][:token]
        redirect_to '/'
    end
end
    