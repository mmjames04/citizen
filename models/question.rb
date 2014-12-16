class Question < ActiveRecord::Base
	has_many :answers

	def question_rand
		Question.first(:order => "RAND()")
	end

	def current_question
		rand_id = rand(Question.count)
		rand_record = Question.first(:conditions => ['id >= ?', rand_id])
	end
end