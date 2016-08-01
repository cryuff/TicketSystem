class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.integer :row
      t.integer :column
      t.integer :hall_id

      t.timestamps
    end
  end
end
