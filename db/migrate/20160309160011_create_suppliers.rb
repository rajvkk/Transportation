class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.integer :store_id
      t.string :warehouse_id
      t.string :supplier_name
      t.string :contact_number

      t.timestamps null: false
    end
  end
end
