class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
			t.belongs_to :store
      t.belongs_to :warehouse
      t.string :name
      t.string :contact_number

      t.timestamps null: false
    end
  end
end
