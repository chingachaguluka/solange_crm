class Product < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	validates :selling_price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }

	belongs_to :product_category
end
