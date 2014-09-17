class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :ad_id
      t.string :comment_author_name
      t.text :comment_description
      t.integer :user_id

      t.timestamps
    end
  end
end
