class ChangeDefaultInAttendances < ActiveRecord::Migration[5.1]
  def change
  	change_column :attendances, :present, :boolean, :default => true
  end
end
