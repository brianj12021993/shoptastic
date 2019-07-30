class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
    	t.string :title
      	t.decimal :cost
      	t.integer :user_id
      	t.timestamps
    end
    add_index :items, :user_id
  end
end
