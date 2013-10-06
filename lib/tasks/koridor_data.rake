namespace :db do
	desc "Fill database with koridor data"
	task populate_koridor: :environment do
		12.times do |n|
			name = "#{n+1}"
			Koridor.create!(name: name)
		end
	end
end
