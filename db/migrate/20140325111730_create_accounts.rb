class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
    	t.string			:name
    	t.string			:address
    	t.integer			:accont_status_id
    	t.integer			:contact_person_id

      t.timestamps
    end
  end
end
