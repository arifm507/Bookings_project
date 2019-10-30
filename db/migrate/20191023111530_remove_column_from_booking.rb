class RemoveColumnFromBooking < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :is_cancelled, :boolean
  end
end
