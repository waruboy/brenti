class KoridorsController < ApplicationController
  def index
  	@koridors = Koridor.all
  end

  def show
  	@koridor = Koridor.find(params[:id])
  	@haltes = @koridor.halte
  end
end
