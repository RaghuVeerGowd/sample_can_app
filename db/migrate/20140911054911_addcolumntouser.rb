class Addcolumntouser < ActiveRecord::Migration
  def up
 	add_column :users, :user_name, :string
  	add_column :users, :role_id, :integer
  end

  def down
  end
end
