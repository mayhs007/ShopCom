class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.column  :tid,:string, :null => false
      t.column :name,:string, :null => false
    end
  end
end
