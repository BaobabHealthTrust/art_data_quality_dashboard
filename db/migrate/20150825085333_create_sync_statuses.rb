class CreateSyncStatuses < ActiveRecord::Migration
  def change
    create_table :sync_status, :primary_key => :sync_status_id do |t|
      t.integer :site_id
      t.datetime :start_datetime, :null => false
      t.datetime :end_datetime, :null => true

      t.timestamps
    end
  end
end
