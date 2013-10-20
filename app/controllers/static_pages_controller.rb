class StaticPagesController < ApplicationController
  def home
  	haltes = Halte.all.collect(&:nama)
  	gon.haltes = haltes
  end

  def help
  end

  def contact
  end
end
