require 'csv'


koridors_file = "db/seeds/koridors.csv"
CSV.foreach(koridors_file, headers: true) do |row|
	Koridor.create!(row.to_hash)
end

(1..12).each do |i|
	filename = "db/seeds/kor#{i}.csv"

	CSV.foreach(filename, :headers => true) do |row|
		Halte.create!(row.to_hash)
	end
end

