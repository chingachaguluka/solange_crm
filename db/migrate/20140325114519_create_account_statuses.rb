class CreateAccountStatuses < ActiveRecord::Migration
  def change
    create_table :account_statuses do |t|
    	t.string					:name

      t.timestamps
    end
  end
end
