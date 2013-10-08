class HaltesController < ApplicationController

	def show
		@halte = Halte.find(params[:id])
	end
end
