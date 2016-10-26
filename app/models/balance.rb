class Balance < ActiveRecord::Base
    def self.balance
       where("amount > ?", 0).sum("amount")
    end
    
    def self.debt
        where("amount < ?", 0).sum("amount")
    end
    
    def self.total
        sum("amount")
    end
  validates :title, :amount, :date, presence: true
end
