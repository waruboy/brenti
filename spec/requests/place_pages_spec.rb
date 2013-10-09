require 'spec_helper'

describe "PlacePages" do

	subject { page }
	let(:koridor) { FactoryGirl.create(:koridor) }
	let(:halte) { FactoryGirl.create(:halte, koridor: koridor) }
	let(:destinasi) { FactoryGirl.create(:place) }

	# describe "detail page" do
	# 	before { visit place_path(destinasi) }

	# 	it { should have_title(destinasi.name) }
	# end

end
