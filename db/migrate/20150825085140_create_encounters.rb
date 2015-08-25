class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounter, :primary_key => :encounter_id do |t|
      t.integer :encounter_type_id, :null => false
      t.integer :action_id, :null => true
      t.datetime :encounter_datetime
      t.integer :site_id

      t.timestamps
    end
  end
end
