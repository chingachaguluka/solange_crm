class Client < ActiveRecord::Base
	validates		:last_name

	belongs_to :account
end
