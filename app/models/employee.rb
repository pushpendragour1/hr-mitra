class Employee < ApplicationRecord
    has_many :documents
    
    validates :first_name,:last_name, presence: true
    validates :personal_emails, presence: true, uniqueness: true
    validates :city, :state, :country, :pincode, :address_line1, presence: true
    validates :job_title, :date_of_birth, :date_of_joining, presence: true
   
    def name
        "#{first_name} #{last_name}".strip
    end

    def email
        "#{personal_emails}"
    end
    
    def full_address
        "#{city} #{state} #{country} #{pincode}"
    end
    def name_with_email
      "#{name} #{personal_emails}"
    end

end
