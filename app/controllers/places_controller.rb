class PlacesController < ApplicationController

	def index
		@place = Place.last
	end

	def new
		@place = Place.new 
	end

	def create
		# Place.create( :title => 'omg', ....)
		@place = Place.create(place_params)
		redirect_to root_path
	end

	private
	# user is not allowed to go to private thing, for my use only

	def place_params
		params.require(:place).permit(:title, :address)
	end


end
