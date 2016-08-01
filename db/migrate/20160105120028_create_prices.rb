class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :name
      t.integer :regularprice
      t.integer :reducedprice

      t.timestamps
    end
  end
end
