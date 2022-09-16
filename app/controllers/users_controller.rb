class UsersController < ApplicationController
    def create
        user = User.find_or_create_by(email: request.env['omniauth.auth'][:info][:email])
        session[:user_token] = request.env['omniauth.auth'][:credentials][:token]
        redirect_to '/'
    end
end
    