class Teacher < ActiveRecord::Base
validates :name, presence: true,
                    length: { minimum:5 }
validates :specialize, presence: true, length: { minimum: 5 },format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }     
validates :designation, presence: true,
                    length: { minimum: 5 }
                    
 validates :name, confirmation: true 
   
   
   before_validation :ensure_name_has_a_value
 
  protected
    def ensure_name_has_a_value
      if name.nil?
        self.name = specialize unless specialize.blank?
      end
    end
     
   before_create do
    self.name1 = name.capitalize if specialize.blank?
   end
     
     has_one :subjects
     has_one :students, through: :subjects
                 
                    
end
