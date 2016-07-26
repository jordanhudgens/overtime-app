class RemoveHoursFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :hours, :decimal
  end
end
