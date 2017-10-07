class AddDefaultToAttendances < ActiveRecord::Migration[5.1]
  def change
  	change_column :attendaces, :present, :boolean, :default => false
  	rename_table :attendaces, :attendances
  end
end
