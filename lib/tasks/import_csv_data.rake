require 'csv'


task import_data: :environment do
  FILE = "lib/assets/netflix_titles.csv"
  CSV.foreach(FILE, headers: :true) do |row|
    Show.create(
      show_type: row["type"].downcase.gsub(' ', '_'),
      **row.to_h.slice("title", "director", "cast", "country", "date_added", "release_year", "rating", "duration", "listed_in", "description")
    )
  end
end
