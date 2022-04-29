class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :type
      t.string :title
      t.string :director
      t.text :cast
      t.string :country
      t.date :date_added
      t.integer :release_year
      t.string :rating
      t.string :duration
      t.text :listed_in
      t.text :description

      t.timestamps
    end
  end
end
