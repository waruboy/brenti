require 'spec_helper'

describe "Koridor pages"  do
	
	subject { page }

	describe "detail page" do
		
		let(:koridor) { FactoryGirl.create(:koridor) }		
		before { visit koridor_path(koridor) }

		it { should have_content(koridor.name) }
		it { should have_title(koridor.name) }
	end

end