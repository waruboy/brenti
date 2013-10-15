class Location < ActiveRecord::Base
	belongs_to :halte
	belongs_to :place

	validates :halte_id, presence: true
end
