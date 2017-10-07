class RenameAttendancesToAttend < ActiveRecord::Migration[5.1]
  def change
  	rename_table :attendances, :attends
  end
end
