class Changestudentsinsubjects < ActiveRecord::Migration[5.1]
  def change
  	rename_column :subjects, :students_id, :student_id
  end
end
