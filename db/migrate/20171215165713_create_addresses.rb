class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.column :username, :string, :null => false
      t.column :address1, :string, :null => false
      t.column :address2, :string,  :null => false
      t.column :state, :string, :null => false
      t.column :city, :string, :null => false
      t.column :pincode, :string,  :null => false
      t.column :created_at, :timestamp, :null => false
    end
  end
  def self.down
    drop_table :addresses
  end
end
