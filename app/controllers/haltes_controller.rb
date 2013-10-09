class HaltesController < ApplicationController

	def show
		@halte = Halte.find(params[:id])
		@places = @halte.places
	end
end
