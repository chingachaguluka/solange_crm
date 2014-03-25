class Account < ActiveRecord::Base
	validates		:name, presence: true

	has_many 		:clients
	has_one			:contact
	belongs_to 	:account_status
end
