class AlterStoresAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
  	 add_column :stores, :user_id, :integer
  	 add_index :stores, :user_id
  end
end
