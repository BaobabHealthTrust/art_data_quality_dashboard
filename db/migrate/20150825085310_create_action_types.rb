class CreateActionTypes < ActiveRecord::Migration
  def change
    create_table :action_types do |t|

      t.timestamps
    end
  end
end
