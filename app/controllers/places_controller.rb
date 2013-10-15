class PlacesController < ApplicationController
	def show
		@place = Place.find(params[:id])
	end
	
	def new
		@place = Place.new
		@location = Location.new
		@haltes = Halte.all
	end

	def create
		@place = Place.new(place_params)
		@location = Location.new(location_params)
		@place.locations << @location
		if @place.save
		else
			@haltes = Halte.all
			render 'new'
		end
	end



	private
		def location_params
			params.require(:location).permit(:halte_id)
		end

		def place_params
			params.require(:place).permit(:name, :description)
		end
end
