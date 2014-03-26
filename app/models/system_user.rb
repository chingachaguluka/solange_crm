class SystemUser < ActiveRecord::Base
	validates 				:username, presence: true, length: { minimum: 3}
	validates					:password, presence: true, length: { minimum: 6}

	belongs_to    :employee
	belongs_to   	:system_group
end
