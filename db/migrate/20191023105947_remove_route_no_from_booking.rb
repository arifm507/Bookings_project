class RemoveRouteNoFromBooking < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :route_no, :integer
  end
end
