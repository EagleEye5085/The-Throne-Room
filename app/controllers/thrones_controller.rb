class ThronesController < ApplicationController 
  def new
    
  end

  def create
    require 'pry'; binding.pry
    #location: params[:location], direction: params[:direction]
    redirect_to '/'
  end

  def show
    thrones = ThroneFacade.create_thrones
    @throne = thrones.find do |throne|
      throne.id == params[:id]
    end 
  end
end