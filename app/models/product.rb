class Product < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :selling_price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }

	has_many				:invoice_items
	belongs_to 			:product_category
end
