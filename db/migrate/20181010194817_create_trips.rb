class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :location
      t.date :startDate
      t.date :endDate
      t.string :notes
      t.string :url

      t.timestamps
    end
  end
end
