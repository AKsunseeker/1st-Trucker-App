class CreateLoads < ActiveRecord::Migration
  def change
    create_table :loads do |t|
      t.integer :status
      t.date :early_pickup_date
      t.time :early_pickup_time
      t.string :origin_city
      t.string :origin_state
      t.string :origin_address
      t.string :origin_zip
      t.string :destination_zip
      t.string :destination_address
      t.string :destination_state
      t.string :destination_city

      t.belongs_to :driver
      t.belongs_to :shipper
      t.belongs_to :dispatcher

      t.timestamps null: false
    end
  end
end
