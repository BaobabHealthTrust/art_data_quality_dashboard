class CreateSyncStatuses < ActiveRecord::Migration
  def change
    create_table :sync_statuses do |t|

      t.timestamps
    end
  end
end
