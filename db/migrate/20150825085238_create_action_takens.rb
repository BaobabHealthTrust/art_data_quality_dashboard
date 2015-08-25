class CreateActionTakens < ActiveRecord::Migration
  def change
    create_table :action_takens do |t|

      t.timestamps
    end
  end
end
