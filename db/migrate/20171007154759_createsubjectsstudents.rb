class Createsubjectsstudents < ActiveRecord::Migration[5.1]
  def change
  	create_table :students_subjects, id: false do |t|
  		t.belongs_to :student, index: true
  		t.belongs_to :subject, index: true
  	end
  end
end
