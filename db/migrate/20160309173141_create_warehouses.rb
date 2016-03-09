class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :warehouse_name
      t.string :warehouse_location

      t.timestamps null: false
    end
  end
end
