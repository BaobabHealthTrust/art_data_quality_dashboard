class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
	t.integer :user_id, :nulll => false
	t.string :role, :null => false

      t.timestamps
    end
	remove_column :user_roles, :id
  end

end
