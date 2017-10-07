class AddUniqueIndexToAttends < ActiveRecord::Migration[5.1]
  def change
  	add_index :attends, :day, unique: true
  end
end
