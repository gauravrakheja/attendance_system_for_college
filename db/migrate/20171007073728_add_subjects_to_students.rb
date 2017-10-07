class AddSubjectsToStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :subjects, :students, foreign_key: true
    add_reference :attendances, :subjects, foreign_key: true
  end
end
