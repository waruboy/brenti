class Place < ActiveRecord::Base
	has_many :place_categories
	has_many :categories, through: :place_categories

	validates :name, presence: true
end
