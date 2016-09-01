class SwapOutRationaleWithWorkPerformedInPosts < ActiveRecord::Migration[5.0]
  def change
  	rename_column :posts, :rationale, :work_performed
  end
end
