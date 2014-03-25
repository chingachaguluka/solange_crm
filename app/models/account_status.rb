class AccountStatus < ActiveRecord::Base
	validates			:name

	has_many			:accounts
end
