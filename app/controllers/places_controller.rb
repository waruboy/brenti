class PlacesController < ApplicationController
	include HaltesHelper
	def show
		@place = Place.find(params[:id])
	end
	
	def new
		gon_collect_haltes_name
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)
		halte = Halte.search(params[:search_halte]).first
		@location = Location.new(halte: halte, remark: params[:location_remark])
		@place.locations << @location
		if @place.save
			flash[:success] = "#{@place.name} berhasil didaftarkan"
			redirect_to place_path(@place)
		else
			render 'new'
		end
	end

	def index
		@places = Place.search(params[:search_place])
		if @places.count == 1
			place = @places.first
			redirect_to place_path(place)
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
