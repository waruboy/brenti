class Place < ActiveRecord::Base
	has_many :place_categories
	has_many :categories, through: :place_categories
	has_many :haltes, through: :locations

	validates :name, presence: true
end
