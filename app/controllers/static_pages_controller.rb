class StaticPagesController < ApplicationController
	include HaltesHelper
  def home
  	gon_collect_haltes_name
  end

  def help
  end

  def contact
  end
end
