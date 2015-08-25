class CreateActionTakens < ActiveRecord::Migration
  def change
    create_table :action_taken, :primary_key => :action_id do |t|
      t.integer :user_id
      t.integer :action_type_id
      t.date :action_date

      t.timestamps
    end
  end
end
