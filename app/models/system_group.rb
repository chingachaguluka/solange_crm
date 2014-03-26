class SystemGroup < ActiveRecord::Base
	validates 			:name, presence: true

	has_many				:system_users
end
