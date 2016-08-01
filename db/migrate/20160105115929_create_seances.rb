class CreateSeances < ActiveRecord::Migration
  def change
    create_table :seances do |t|
      t.datetime :date
      t.integer :movie_id
      t.integer :price_id
      t.integer :hall_id

      t.timestamps
    end
  end
end
