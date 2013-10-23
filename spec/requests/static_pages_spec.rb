require 'spec_helper'

describe "StaticPages" do

	subject { page }
	let!(:koridor) { FactoryGirl.create(:koridor) }
	let!(:halte) { FactoryGirl.create(:halte) }
	let!(:destinasi) { FactoryGirl.create(:place) }

	describe "Home page" do
		before do 
			visit root_path
		end
		it { should  have_content('Brenti') }
		it { should  have_title("Depan - Brenti") }

		describe "view places around halte" do
			describe "with input" do
				before do
					fill_in "search_halte", with: "GOR Sumantri"
					click_button "Lihat"
				end
				it { should have_title(halte.nama) }
			end

			describe "without input" do
				before do
					fill_in "search_halte", with: ""
					click_button "Lihat"
				end
				it { should have_title(halte.nama) }
			end
		end
	end

	describe "Help page" do

		before { visit help_path }
		it { should have_content('Petunjuk') }
		it { should have_title("Petunjuk - Brenti") }
	end

	describe "Contact page" do

		before { visit contact_path }
		it { should have_content('Hubungi') }
		it { should have_title("Kontak - Brenti") }
	end
end
