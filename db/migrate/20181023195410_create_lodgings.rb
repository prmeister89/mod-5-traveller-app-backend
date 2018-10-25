class CreateLodgings < ActiveRecord::Migration[5.2]
  def change
    create_table :lodgings do |t|
      t.integer :trip_id
      t.string :name
      t.string :bookingCode
      t.string :checkin
      t.string :checkout
      t.string :address
      t.string :info

      t.timestamps
    end
  end
end
