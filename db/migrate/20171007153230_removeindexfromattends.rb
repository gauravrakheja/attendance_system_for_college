class Removeindexfromattends < ActiveRecord::Migration[5.1]
  def change
  	remove_index :attends, :day
  end
end
