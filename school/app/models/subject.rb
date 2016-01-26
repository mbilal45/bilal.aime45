class Subject < ActiveRecord::Base
  validates :teacher_name, presence: true,
                    length: { minimum: 5 }
                    
 validates :sub_name, confirmation: true 
 has_and_belongs_to_many :students
 belongs_to :teachers
 has_one :students
end
