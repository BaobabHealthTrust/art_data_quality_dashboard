class CreateEncounterTypes < ActiveRecord::Migration
  def change
    create_table :encounter_types do |t|
	t.string :name, :null =>false
	t.text :description, :null =>true
	t.boolean :voided, :null => false, :default => false
	t.text :void_reason, :null => true

      t.timestamps
    end
  end

end
