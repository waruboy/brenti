module HaltesHelper
	def gon_collect_haltes_name
		haltes = Halte.all.collect(&:nama)
  		gon.haltes = haltes
  	end

end
