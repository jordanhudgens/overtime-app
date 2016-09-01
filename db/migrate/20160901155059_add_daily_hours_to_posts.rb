class AddDailyHoursToPosts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :posts, :overtime_request, :daily_hours
  end
end
