class WelcomeController < ApplicationController 
  #before_action :authorize
  def index  
    @thrones = ThroneFacade.create_thrones
  end
end