class Questions < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.string :question
  		t.string :wrong_answer_one
  		t.string :wrong_answer_two
  	end
  end
end
