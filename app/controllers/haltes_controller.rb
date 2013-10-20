class HaltesController < ApplicationController

	def show
		@halte = Halte.find(params[:id])
		@places = @halte.places
	end

	def index
		halte = Halte.search(params[:search]).first
		redirect_to halte_path(halte)
	end
end
