class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.string :sub_name
      t.string :teacher_name
       t.belongs_to :teacher, index: true
      t.timestamps null: false
    end
  end
  
  def self.down
      drop_table :subjects
   end
  
end
