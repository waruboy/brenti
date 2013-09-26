require 'spec_helper'

describe Place do
	before { @tempat = Place.new(name: "aa") }

	subject { @tempat }
	it { should respond_to(:name) }
	it { should respond_to(:description) }
	it { should respond_to(:categories) }

	it { should be_valid }

	describe "without name" do
		before { @tempat.name = nil }
		it { should_not be_valid }
	end
end
