class AddStudentIdToSubjects < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :students, subjects
  end
end
