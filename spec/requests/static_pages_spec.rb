require 'spec_helper'

describe "StaticPages" do

	describe "Home page" do

		it "should have the content 'Brenti'" do
			visit '/static_pages/home'
			expect(page).to have_content('Brenti')
		end

		it "should have title 'Depan'" do
			visit '/static_pages/home'
			expect(page).to have_title("Depan - Brenti")
		end
	end

	describe "Help page" do

		before {visit '/static_pages/help'}
		it "should have the content 'Petunjuk'" do
			expect(page).to have_content('Petunjuk')
		end

		it "should have title 'Depan'" do
			expect(page).to have_title("Petunjuk - Brenti")
		end
	end

	describe "Contact page" do

		before {visit '/static_pages/contact'}
		it "should have the content 'Hubungi'" do
			expect(page).to have_content('Hubungi')
		end

		it "should have title 'Kontak'" do
			expect(page).to have_title("Kontak - Brenti")
		end
	end
end
