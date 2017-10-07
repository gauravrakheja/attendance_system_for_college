class Rename < ActiveRecord::Migration[5.1]
  def change
  	rename_column :attends, :subjects_id, :subject_id
  end
end
