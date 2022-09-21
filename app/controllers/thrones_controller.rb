require "uri"
require "net/https"

class ThronesController < ApplicationController 
  def new
    
  end

  def create 
    not_params = {"throne_room" => {name: params[:name], address: params[:address], directions: params[:directions], baby_changing_station: params[:baby_changing_station], bathroom_style: params[:bathroom_style], key_code_required: params[:key_code_required]}}
    ThroneFacade.send(not_params)
    redirect_to '/'
  end

  def show
    thrones = ThroneFacade.create_thrones
    @throne = thrones.find do |throne|
      throne.id == params[:id]
    end 
    @reviews = ReviewFacade.all_reviews(@throne.id)
  end
end