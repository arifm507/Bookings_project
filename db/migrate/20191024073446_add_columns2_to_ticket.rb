class AddColumns2ToTicket < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :base_fare, :float
    add_column :tickets, :email, :string
    add_column :tickets, :age, :int
  end
end
