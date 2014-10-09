require 'pry'
require 'csv'
puts "RecreationCenters Initialized!"


contents = CSV.open("./lib/recreation_centers.csv", headers: true, header_converters: :symbol)
contents.each do |row|
  name          = row[:rec_name]
  address_line1 = row[:address_line1]
  city          = row[:city]
  latitude      = row[:latitude]
  longitude     = row[:longitude]
  puts "#{name} #{address_line1} #{city} #{latitude} #{longitude}"
end
