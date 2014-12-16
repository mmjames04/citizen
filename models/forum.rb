class Forum < ActiveRecord::Base
	#relationships
	has_one :user
	default_scope -> {order('created_at DESC')}
end