class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.column :item_id, :string, :null => false
      t.column :item_name, :string, :null => false
      t.column :item_category, :string,  :null => false
      t.column :item_price, :string, :null => false
      t.column :item_quantity, :string, :null => false
      t.column :item_uploadedby, :string, :null => false
      t.column :item_pic, :string, :null => false
      t.column :item_description, :string, :null => false
      t.column :created_at, :timestamp, :null => false
    end 
  end  
  def self.down
    drop_table :items
  end
end
