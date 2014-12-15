class Forums < ActiveRecord::Migration
  def change
  	create_table :forums do |t|
  		t.string :post, null: false
  		t.integer :user_id
  		t.timestamps
  	end
  end
end
