class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :class
      t.text :section
      t.string :session
      t.string :incharge
       t.belongs_to :subject, index: true
      t.timestamps null: false
    end
  end
  
  def self.down
      drop_table :students
   end
end
