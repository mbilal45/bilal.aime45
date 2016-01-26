class Student < ActiveRecord::Base
validates :class_ch, presence: true,
                    length: { minimum: 5 }
validates :section, presence: true,
                    length: { minimum: 5 }
validates :session, presence: true,
                    length: { minimum: 10 }
validates :incharge, presence: true,
                    length: { minimum: 15 }
                    
 has_and_belongs_to_many :subjects
 belongs_to :subjects
end
