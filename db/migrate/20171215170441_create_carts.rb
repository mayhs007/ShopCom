class CreateCarts < ActiveRecord::Migration
  def self.up
    create_table :carts do |t|
      t.column :cart_id, :string, :null => false
      t.column :item_id, :string, :null => false
      t.column :user_name, :string, :null => false
      t.column :cart_quantity, :string, :null => false
      t.column :item_uploadedby, :string, :null => false
    end
  end
  def self.down
    drop_table :carts
  end
end
