class AddBookingToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :booking, foreign_key: true
  end
end
