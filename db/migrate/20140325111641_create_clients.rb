class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
    	t.string 		:title
    	t.string 		:first_name
    	t.string		:last_name
    	t.string		:cell_phone1
    	t.string		:cell_phone2
    	t.string		:address
    	t.string		:city
    	t.string		:country
    	t.string		:email
    	t.integer		:account_id


      t.timestamps
    end
  end
end
