require "uri"
require "net/http"

class ThronesController < ApplicationController 
  def new
    
  end

  def create 
    not_params = {"throne_room" => {name: params[:name], location: params[:location], direction: params[:direction], baby_changing_station: params[:baby_changing_station], bathroom_style: params[:bathroom_style], key_code_required: params[:key_code_required]}}
    send = Net::HTTP.post_form(URI.parse('https://the-throne-room-api.herokuapp.com/api/v1/throne_rooms'), not_params)
    puts send.body
    redirect_to '/'
  end

  def show
    thrones = ThroneFacade.create_thrones
    @throne = thrones.find do |throne|
      throne.id == params[:id]
    end 
  end
end