class Client < ApplicationRecord
    belongs_to :user
    
    has_many :bills, dependent: :destroy
    
    
  VALID_EMAIL_REGEX = /A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    before_save { self.Email = self.Email.downcase }
    
    validates :Name, presence: true, length: { minimum: 1 }
    validates :Address, presence: true, length: { minimum: 5 }
    validates :Phone_Number, presence: true, length: { minimum: 10 }
    validates :Email, 
        presence: true, 
        length: { maximum: 255 },
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }
    validates :Court_Date, presence: true, length: { minimum: 5 }
    validates :Case_Description, presence: true, length: { minimum: 1 }

end
