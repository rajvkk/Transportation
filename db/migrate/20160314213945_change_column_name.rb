class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :stores, :store_name, :name
  	rename_column :stores, :store_location, :location
  	rename_column :warehouses, :warehouse_name, :name
  	rename_column :warehouses, :warehouse_location, :location
  	rename_column :suppliers, :supplier_name, :name
  end
end
