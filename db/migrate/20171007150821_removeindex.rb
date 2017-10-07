class Removeindex < ActiveRecord::Migration[5.1]
  def change
  	remove_column :attends, :student_id
  	remove_column :attends, :subject_id
  end
end
