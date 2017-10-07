class AddStudentToAttendances < ActiveRecord::Migration[5.1]
  def change
  	add_reference :attends, :student, foreign_key: true
  end
end
