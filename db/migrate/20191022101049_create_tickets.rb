class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :seat_number
      t.string :pnr_number
      t.string :passenger_name
      t.float :net_fare
      t.float :gst
      t.float :cancelled_fare
      t.boolean :is_cancelled, :default => false
      t.float :total_amount
      



      t.timestamps
    end
  end
end
