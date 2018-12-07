class CreateAdmindetails < ActiveRecord::Migration
  def change
    create_table :admindetails do |t|
      t.column :adminname, :string, :null => false
      t.column :fname, :string,  :null => false
      t.column :lname, :string, :null => false
      t.column :email, :string, :null => false
      t.column :phone, :string, :null => false
      t.column :password, :string, :null => false
      t.column :created_at, :timestamp, :null => false
    end
  end
  def self.down
    drop_table :admindetails
  end
end
