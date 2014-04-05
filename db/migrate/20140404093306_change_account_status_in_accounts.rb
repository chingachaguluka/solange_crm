class ChangeAccountStatusInAccounts < ActiveRecord::Migration
  def change
  	remove_column :account_statuses, :accont_status_id
  	add_column :account_statuses, :account_status_id, :integer
  end
end
