class Location < ActiveRecord::Base
	belongs_to :halte
	belongs_to :place
end
