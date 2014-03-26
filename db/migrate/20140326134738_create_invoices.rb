class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
    	t.datetime				:datetime_of_invoice
    	t.integer 				:client_id
    	t.integer 				:system_user_id
    	t.decimal					:total_amount
    	t.decimal					:discount
      t.decimal         :amount_tendered
      t.string          :status

      t.timestamps
    end
  end
end
