class PlacesController < ApplicationController
	def show
		@place = Place.find(params[:id])
	end
	
	def new
		@place = Place.new
		@location = Location.new
		@haltes = Halte.all
		@koridors = Koridor.all
		haltes_hash = {}
		@koridors.each do |koridor|
			haltes_array = []
			koridor.halte.each do |h|
				haltes_array << h.id
			end
			haltes_hash.merge!(koridor.id => haltes_array)
		end
		haltes_name_hash = Hash[ @haltes.map{ |h| [ h.id, h.nama ] } ]
		gon.haltes = haltes_hash
		gon.haltes_name = haltes_name_hash
		@test = haltes_hash.to_json
		@test2 = haltes_name_hash.to_json
	end

	def create
		@place = Place.new(place_params)
		@location = Location.new(location_params)
		@place.locations << @location
		if @place.save
			flash[:success] = "#{@place.name} berhasil didaftarkan"
			redirect_to place_path(@place)
		else
			redirect_to new_place_path
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
