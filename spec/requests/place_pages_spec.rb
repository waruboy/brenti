require 'spec_helper'

describe "PlacePages" do

	subject { page }
	let!(:koridor) { FactoryGirl.create(:koridor) }
	let!(:halte) { FactoryGirl.create(:halte, koridor: koridor) }
	let!(:destinasi) { FactoryGirl.create(:place) }

	describe "detail page" do
		before { visit place_path(destinasi) }

		it { should have_title(destinasi.name) }
	end

	describe "create new place" do
		before { visit new_place_path }
		let(:submit) { "Daftarkan destinasi" }

		describe "with invalid information" do
			it "should not create a place" do
				expect { click_button submit }.not_to change(Place, :count)
			end
		end

		# describe "with valid information" do
		# 	before do
		# 		fill_in "Name", 	with: "Pasar Festival"
		# 		# select "Gor Sumantri", from: "location[halte_id]"
		# 	end
		# 	it "should create a place" do
		# 		expect { click_button submit }.to change(Place, :count).by(1)
		#  	end
		# end
	end
end
