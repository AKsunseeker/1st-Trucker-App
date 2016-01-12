class CreateDispatchers < ActiveRecord::Migration
  def change
    create_table :dispatchers do |t|
      t.string :name
      t.string :phone
      t.string :email


      t.timestamps null: false
    end
  end
end
