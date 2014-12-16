class AddCorrectAnswerToAnswers < ActiveRecord::Migration
  def change
  	change_table :answers do |t|
  		t.boolean :correct_answer, default: false
  	end
  end
end
