class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string					:title
    	t.string					:first_name
    	t.string					:last_name
    	t.string					:cell_phone
    	t.string					:email
    	t.integer					:account_id

      t.timestamps
    end
  end
end
