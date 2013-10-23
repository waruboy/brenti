class Halte < ActiveRecord::Base
	belongs_to :koridor
	has_many :locations, dependent: :destroy
	has_many :places, through: :locations


	def self.search(search)
		if search
			where('nama LIKE ?', "%#{search}%")
		else
			find(:all)
		end
	end
end
