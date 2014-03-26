class InvoiceItem < ActiveRecord::Base
	validates :datetime_of_sale, presence: true
	validates :invoice_id, presence: true
	validates :system_user_id, presence: true
	validates :product_id, presence: true
	validates :quantity, presence: true
	validates :selling_price, presence: true

	belongs_to 				:invoice
	belongs_to 				:system_user
	belongs_to 				:product

end
