class Contact < ActiveRecord::Base
	validates	:last_name, presence: true
	validates   :cell_phone, presence: true

	belongs_to :account
end
