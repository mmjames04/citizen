class Answer < ActiveRecord::Base
	#relationships
	has_one :question
end