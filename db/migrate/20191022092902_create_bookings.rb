class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :pnr
      t.float :total_fare
      t.string :passenger_name
      t.string :email
      t.string :origin
      t.string :destination
      t.integer :passenger_age
      t.integer :route_no
      t.date :travel_date
      t.date :issue_date
      t.boolean :is_cancelled
      t.string :boarding_point
      t.string :droping_point

      t.timestamps
    end
  end
end
