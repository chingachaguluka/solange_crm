class Contact < ActiveRecord::Base
	validates		:last_name
	validates   :cell_phone

	has_one 		:account
end
