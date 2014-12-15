class Users < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :email
  		t.string :hashed_password
  		t.string :salt
  	end
  end
end
