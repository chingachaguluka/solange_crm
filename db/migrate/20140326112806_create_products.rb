class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string				:name
    	t.string				:description
    	t.decimal				:selling_price, precision: 10, scale: 2
    	t.boolean				:is_service
    	t.integer				:product_category_id
    	
      t.timestamps
    end
  end
end
