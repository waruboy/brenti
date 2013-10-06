require 'csv'

filename = 'db/seeds/kor1.csv'

CSV.foreach(filename, :headers => true) do |row|
	Halte.create!(row.to_hash)
end

(1..12).each do |kor|
	Koridor.create!(name: "#{kor}")
end