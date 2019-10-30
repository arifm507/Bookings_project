class AddColumnsToTicket < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :user, foreign_key: true
    add_column :tickets, :travel_date, :date
    add_column :tickets, :issue_date, :date
  end
end
