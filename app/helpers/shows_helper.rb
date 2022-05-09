require 'csv'

module ShowsHelper

  FILE = "lib/assets/netflix_titles.csv"

  def get_csv_data
    CSV.foreach(FILE, headers: :true).each_with_object([]) { |obj, array| array << obj.to_h }
  end
end
