require 'csv'


(1..12).each do |i|
	filename = "db/seeds/kor#{i}.csv"

	CSV.foreach(filename, :headers => true) do |row|
		Halte.create!(row.to_hash)
	end
end

(1..12).each do |kor|
	Koridor.create!(name: "#{kor}")
end