class RemoveColumnsFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :boarding_point, :string
    remove_column :bookings, :droping_point, :string
  end
end
