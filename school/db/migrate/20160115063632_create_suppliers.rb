class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
       t.string :name
      t.timestamps null: false
    end
  end
  def self.down
      drop_table :suppliers
   end
end
