class Removestudentidfromsubjects < ActiveRecord::Migration[5.1]
  def change
  	remove_column :subjects, :student_id
  end
end
