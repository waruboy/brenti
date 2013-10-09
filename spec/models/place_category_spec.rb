require 'spec_helper'

describe PlaceCategory do
	before do
		@placecategory = PlaceCategory.new(place_id: 1, category_id: 1)
	end

	subject { @placecategory }
	it { should respond_to(:place) }
	it { should respond_to(:category) }


	it { should be_valid }

	describe "when it doesn't have a place" do
		before { @placecategory.place = nil }

		it { should_not be_valid}		
	end

	describe "when it doesn't have a place" do
		before { @placecategory.category = nil }

		it { should_not be_valid}		
	end
end

