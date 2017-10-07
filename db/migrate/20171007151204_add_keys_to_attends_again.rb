class AddKeysToAttendsAgain < ActiveRecord::Migration[5.1]
  def change
  	add_column :attends, :student_id, :integer
  	add_column :attends, :subject_id, :integer
  end
end
