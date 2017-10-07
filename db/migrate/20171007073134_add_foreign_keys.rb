class AddForeignKeys < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :subjects, :students
  	add_foreign_key :attendaces, :subjects
  end
end
