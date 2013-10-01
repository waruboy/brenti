require 'spec_helper'

describe "StaticPages" do

	subject { page }

	describe "Home page" do
		before { visit root_path }
		it { should  have_content('Brenti') }
		it { should  have_title("Depan - Brenti") }
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
