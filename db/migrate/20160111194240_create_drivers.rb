class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.datetime :next_available_time
      t.string :next_available_location
      t.string :phone
      t.string :email
      t.belongs_to :dispatcher
      


      t.timestamps null: false
    end
  end
end
