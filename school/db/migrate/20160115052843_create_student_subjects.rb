class CreateStudentSubjects < ActiveRecord::Migration
  def self.up
    create_table :student_subjects do |t|

      t.timestamps null: false
      t.belongs_to :student, index: true
      t.belongs_to :subject, index: true
    end
  end
  
  def self.down
      drop_table :student_subjects
   end
end
