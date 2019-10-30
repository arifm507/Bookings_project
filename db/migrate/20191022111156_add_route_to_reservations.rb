class AddRouteToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :route, foreign_key: true
  end
end
