namespace :locations do
  desc "Populates locations in the database"
  task generate: :environment do
    puts "Fetching data..."
    response = Faraday.new(url: "http://data.denvergov.org/download/gis/recreation_centers/csv/recreation_centers.csv").get
    puts "Done."

    puts "Saving data into file..."

    File.open("./lib/recreation_centers.csv", "w+") do |file|
      file.write response.body
    end
    puts "Done."

    puts "Populating locations in the database..."
    contents = CSV.open("./lib/recreation_centers.csv", headers: true, header_converters: :symbol)
    contents.each do |row|
      location = Location.find_or_create_by(
        name:      row[:rec_name],
        address:   row[:address_line1],
        city:      row[:city],
        latitude:  row[:latitude],
        longitude: row[:longitude]
      )
      puts "#{location.name} #{location.address} #{location.city} #{location.latitude} #{location.longitude}"
    end
    puts "Done."
  end
end
