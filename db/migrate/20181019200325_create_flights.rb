class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :trip_id
      t.string :from
      t.string :to
      t.string :flightNumber
      t.time :departure
      t.string :gate
      t.string :boardingGroup
      t.string :seat
      t.string :ticket


      t.timestamps
    end
  end
end
