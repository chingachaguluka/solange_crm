class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string 		:title
    	t.string 		:first_name
    	t.string		:last_name
    	t.string		:cell_phone1
    	t.string		:cell_phone2
    	t.string		:address
    	t.string		:city
    	t.string		:country
    	t.string		:email
    	t.string		:employment_number
    	t.date			:date_of_birth
    	t.date 			:engaged_on
    	t.date 			:terminated_on
    	t.integer		:employee_status_id
    	t.boolean		:temporary
    	t.boolean		:under_probation
    	t.string		:next_of_kin
    	t.string		:next_of_kin_phone
    	t.string		:next_of_kin_email
    	t.string		:next_of_kin_address

      t.timestamps
    end
  end
end
