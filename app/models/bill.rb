class Bill < ApplicationRecord
    belongs_to :client
    
    validates :name, presence: true, length: { minimum: 1 }
    validates :address, presence: true, length: { minimum: 5 }
    validates :date, presence: true, length: { minimum: 5 }
    validates :description, presence: true, length: { minimum: 1 }
    validates :rate, presence: true, length: { minimum: 1 }
    validates :hours, presence: true, length: { minimum: 1 }
    
    def Total
         
        total = self.hours * self.rate
        return  total
    end
end
