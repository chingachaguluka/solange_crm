class Account < ActiveRecord::Base
	validates		:name

	has_many 		:clients
	has_one			:contact
	belongs_to 	:account_status
end
