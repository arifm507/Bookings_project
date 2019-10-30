class AddReservationToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :reservation, foreign_key: true
    add_reference :bookings, :route, foreign_key: true
  end
end
