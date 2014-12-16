class DropWrongAnswersFromQuestions < ActiveRecord::Migration
  def change
  	remove_column :questions, :wrong_answer_one
  	remove_column :questions, :wrong_answer_two
  end
end
