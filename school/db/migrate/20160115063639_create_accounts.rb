class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.belongs_to :supplier, index: true
      t.string :account_number
      t.timestamps null: false
    end
  end
   def self.down
      drop_table :accounts
   end
end
