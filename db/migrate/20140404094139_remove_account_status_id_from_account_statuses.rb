class RemoveAccountStatusIdFromAccountStatuses < ActiveRecord::Migration
  def change
  		remove_column :account_statuses, :account_status_id
  end
end
