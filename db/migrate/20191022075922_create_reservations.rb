class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :route_id
      t.date :travel_date
      t.integer :number_of_seats
      t.string :origin
      t.string :destination
      t.time :departure_time
      t.time :arrival_time
      t.string :duration


      t.timestamps
    end
  end
end
