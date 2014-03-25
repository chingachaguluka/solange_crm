class RenameAccountIdToContactIdInAccounts < ActiveRecord::Migration
  def change
  	remove_column :accounts, :account_id
  	add_column :accounts, :contact_id, :integer
  end
end
