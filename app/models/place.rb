class Place < ActiveRecord::Base
	has_many :place_categories
	has_many :categories, through: :place_categories
	has_many :locations, dependent: :destroy
	has_many :haltes, through: :locations

	validates :name, presence: true

	def add_halte!(halte)
		locations.create!(halte_id: halte.id)
	end

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			find(:all)
		end
	end
end
