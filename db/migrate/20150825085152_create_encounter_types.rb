class CreateEncounterTypes < ActiveRecord::Migration
  def change
    create_table :encounter_type, :primary_key => :encounter_type_id do |t|
      t.string :name, :null => false
      t.text :description, :null => true

      t.timestamps
    end
  end

end
