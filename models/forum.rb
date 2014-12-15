class Forum < ActiveRecord::Base
	#relationships
	has_one :user
end