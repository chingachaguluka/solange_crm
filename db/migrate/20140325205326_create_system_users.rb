class CreateSystemUsers < ActiveRecord::Migration
  def change
    create_table :system_users do |t|
    	t.string 				:username
    	t.string 				:password
    	t.boolean				:disabled
      t.boolean       :locked
    	t.integer				:employee_id
    	t.integer 			:system_group_id

      t.timestamps
    end
  end
end
