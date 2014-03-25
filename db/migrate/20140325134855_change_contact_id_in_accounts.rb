class ChangeContactIdInAccounts < ActiveRecord::Migration
  def change
  	remove_column :accounts, :"contact_person_id"
  	add_column :accounts, :account_id, :integer
  end
end
