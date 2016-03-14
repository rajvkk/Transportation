class ChangeInColumnName < ActiveRecord::Migration
  def change
  	rename_column :suppliers, :contact_number, :contactnumber
  end
end
