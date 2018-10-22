class CreateLuggages < ActiveRecord::Migration[5.2]
  def change
    create_table :luggages do |t|
      t.integer :trip_id
      t.integer :qty
      t.string :item
      t.timestamps
    end
  end
end
