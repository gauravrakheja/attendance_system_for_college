class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :roll_number
      t.string :name
      t.string :phone
      t.string :email
      t.string :course
      t.string :year

      t.timestamps
    end
  end
end
