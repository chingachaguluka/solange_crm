class Invoice < ActiveRecord::Base
	validates :datetime_of_invoice, presence: true
	validates :client_id, presence: true
	validates :system_user_id, presence: true
	validates :total_amount, presence: true

	has_many 					:invoice_items
	belongs_to 				:client
	belongs_to 				:system_user
end
