class ChangeAccountStatusInAccountsAgain < ActiveRecord::Migration
  def change
  		remove_column :accounts, :accont_status_id
  		add_column :accounts, :account_status_id, :integer
  end
end
