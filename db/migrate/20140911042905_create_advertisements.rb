class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :ad_name
      t.text :ad_discription
      t.string :ad_author_name
      t.integer :user_id

      t.timestamps
    end
  end
end
