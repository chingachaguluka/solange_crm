class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
    	t.datetime				:datetime_of_sale
    	t.integer					:product_id
    	t.integer					:quantity
    	t.decimal					:selling_price
    	t.decimal 				:discount
    	t.integer 				:system_user_id
    	t.integer					:invoice_id

      t.timestamps
    end
  end
end
