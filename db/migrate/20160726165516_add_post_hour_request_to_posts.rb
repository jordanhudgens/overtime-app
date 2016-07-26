class AddPostHourRequestToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :overtime_request, :decimal, default: 0.0
  end
end
