class CreateSystemGroups < ActiveRecord::Migration
  def change
    create_table :system_groups do |t|
    	t.string				:name

      t.timestamps
    end
  end
end
