class CreateAuditLogs < ActiveRecord::Migration
  def change
    create_table :audit_logs do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :status, default: 0
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
