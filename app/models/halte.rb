class Halte < ActiveRecord::Base
	belongs_to :koridor
	has_many :places, through: :locations
end
