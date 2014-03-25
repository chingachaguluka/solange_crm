class RemoveContactIdFromAccounts < ActiveRecord::Migration
  def change
  	remove_column :accounts, :contact_id
  end
end
