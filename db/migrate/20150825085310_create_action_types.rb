class CreateActionTypes < ActiveRecord::Migration
  def change
    create_table :action_type, :primary_key => :action_type_id do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
