FactoryGirl.define do
	factory :koridor do
		name	"1"
		description		"Blok M - Kota"
	end

	factory :halte do
		kode	"k.00"
		nama	"GOR Sumantri"
		koridor
	end
end