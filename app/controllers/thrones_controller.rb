class ThronesController < ApplicationController 
  def new
    
  end

  def show
    thrones = ThroneFacade.create_thrones
    @throne = thrones.find do |throne|
      throne.id == params[:id]
    end 
  end
end