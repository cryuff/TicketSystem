class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.boolean :type
      t.integer :spot_id
      t.integer :seance_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
