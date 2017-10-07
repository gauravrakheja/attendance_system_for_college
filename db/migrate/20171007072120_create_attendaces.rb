class CreateAttendaces < ActiveRecord::Migration[5.1]
  def change
    create_table :attendaces do |t|
    	t.date :day
    	t.boolean :present
    end
  end
end
