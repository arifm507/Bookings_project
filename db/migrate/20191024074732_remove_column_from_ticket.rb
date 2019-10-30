class RemoveColumnFromTicket < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :total_amount, :float
    add_column :tickets, :refund_amount, :float
  end
end
