class Removepresentfromattends < ActiveRecord::Migration[5.1]
  def change
  	remove_column :attends, :present
  end
end
