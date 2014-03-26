class Employee < ActiveRecord::Base
		validates		:first_name, presence: true
		validates		:last_name, presence: true

	has_one :system_user
end
