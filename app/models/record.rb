class Record < ActiveRecord::Base
    def self.balance
       where("amount > ?", 0).sum("amount")
    end
    
    def self.debt
        where("amount < ?", 0).sum("amount")
    end
    
    def total
        total = balances + debt
        total
    end
end