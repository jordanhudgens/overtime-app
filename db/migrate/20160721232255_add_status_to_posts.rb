class AddStatusToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :status, :integer, default: 0
  end
end
