class PlaceCategory < ActiveRecord::Base
	belongs_to :place
	belongs_to :category
	validates :place_id, presence: true
	validates :category_id, presence: true
end
