require 'spec_helper'

describe "HaltePages" do

	subject { page }

	describe "detail page" do

		let(:koridor) { FactoryGirl.create(:koridor) }
		let(:halte) { FactoryGirl.create(:halte) }
		let(:place) { FactoryGirl.create(:place) }

		before { visit halte_path(halte) }

		it { should have_title(halte.nama) }
		it { should have_content(halte.nama) }
		it { should have_content(place.name) }
	end


end
