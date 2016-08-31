class DropSubs < ActiveRecord::Migration[5.0]
  def change
  	drop_table :subordinates
  end
end
