class Client < ActiveRecord::Base
	validates		:last_name, presence: true

	belongs_to :account
	has_many :invoices
end
