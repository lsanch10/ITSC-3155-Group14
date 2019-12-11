class Bill < ApplicationRecord
    belongs_to :client
     
     def Total
         
       total = self.hours * self.rate
        return  total
    end
end
