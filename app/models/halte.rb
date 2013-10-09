class Halte < ActiveRecord::Base
	belongs_to :koridor
	has_many :locations, dependent: :destroy
	has_many :places, through: :locations
end
