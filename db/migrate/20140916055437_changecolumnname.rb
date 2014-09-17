class Changecolumnname < ActiveRecord::Migration
  def up
  	rename_column :comments, :ad_id, :advertisement_id
  end

  def down
  end
end
