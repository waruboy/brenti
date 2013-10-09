require 'spec_helper'

describe Place do
	before { @tempat = Place.new(name: "aa") }

	subject { @tempat }
	it { should respond_to(:name) }
	it { should respond_to(:description) }
	it { should respond_to(:categories) }
	it { should respond_to(:haltes) }
	it { should respond_to(:locations) }
	it { should respond_to(:add_halte!) }

	it { should be_valid }

	describe "without name" do
		before { @tempat.name = nil }
		it { should_not be_valid }
	end

	describe "adding halte" do
		let(:koridor) { FactoryGirl.create(:koridor) }
		let!(:halte) { FactoryGirl.create(:halte, koridor: koridor) }
		before do
			@tempat.save
			@tempat.add_halte!(halte)
		end

		its(:haltes) { should include(halte) }
	end
end
