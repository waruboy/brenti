FactoryGirl.define do
	factory :koridor do
		name	"1"
		description		"Blok M - Kota"
	end


	factory :place do
		name	"Pasar Festival"
	end

	factory :halte do
		kode	"k.00"
		nama	"GOR Sumantri"
		association	:koridor

		after(:create) do |halte|
			halte.places << FactoryGirl.create(:place)
		end
	end

	factory :location do
		association :place
		assoication :halte
	end

	

end