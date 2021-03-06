class PlacesController < ApplicationController
	def index
		@place = Place.order("RANDOM()").first
	end

	def new
		@place = Place.new
	end

	def create
		Place.create(place_params)
		redirect_to root_path
	end

	private 

	def place_params
		params.require(:place).permit(:location)
		
	end
end
