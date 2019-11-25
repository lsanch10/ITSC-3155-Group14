class Client < ApplicationRecord
    has_many :bills
    validates :Name, presence: true, length: { minimum: 1 }
    validates :Address, presence: true, length: { minimum: 5 }
    validates :Phone_Number, presence: true, length: { minimum: 10 }
    validates :Email, presence: true, length: { minimum: 1 }
    validates :Court_Date, presence: true, length: { minimum: 5 }
    validates :Case_Description, presence: true, length: { minimum: 1 }

end
