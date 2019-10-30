class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :route_name
      t.string :service_number
      t.string :origin
      t.string :destination
      t.integer :number_of_seats
      t.time :departure_time
      t.time :arrival_time
      t.string :duration
 


      t.timestamps
    end
  end
end
