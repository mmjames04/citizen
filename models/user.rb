class User < ActiveRecord::Base
	#relationships
	has_many :forums

	Sinatra::SimpleAuthentication.require_adapter
		include Sinatra::SimpleAuthentication::Models::ActiveRecord::Adapter
end