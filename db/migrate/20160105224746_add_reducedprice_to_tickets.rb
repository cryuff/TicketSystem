class AddReducedpriceToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :reducedprice, :boolean
  end
end
