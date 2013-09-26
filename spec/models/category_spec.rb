require 'spec_helper'

describe Category do
	before do
		@kategori = Category.new(name: "Pusat perbelanjaan")
	end

	subject { @kategori }

	it { should respond_to(:name) }
	it { should respond_to(:description) }
	it { should respond_to(:places) }

	it { should be_valid }

	describe "without name" do
		before { @kategori.name = nil }

		it { should_not be_valid }
	end
end
