class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.column :bill_id, :string, :null => false
      t.column :user_name, :string, :null => false
      t.column :item_name, :string, :null => false
      t.column :item_qty, :string, :null => false
      t.column :item_price, :string, :null => false 
      t.column :item_value,:string, :null => false
      t.timestamps null: false
    end
  end
end
