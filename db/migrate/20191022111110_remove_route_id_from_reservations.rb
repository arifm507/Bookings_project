class RemoveRouteIdFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :route_id, :integer
  end
end
