require 'spec_helper'

describe "HaltePages" do

	subject { page }

	describe "detail page" do

		let(:koridor) { FactoryGirl.create(:koridor) }
		let(:halte) { FactoryGirl.create(:halte, koridor: koridor) }

		before { visit halte_path(halte) }

		it { should have_title(halte.nama) }
		it { should have_content(halte.nama) }
	end


end
