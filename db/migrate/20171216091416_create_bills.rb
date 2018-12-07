class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      
      t.column :bill_id, :string, :null => false
      t.column :user_name, :string, :null => false
      t.column :bill_amt, :string,:null => false
    end
  end
end
