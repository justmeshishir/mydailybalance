class Balance < ActiveRecord::Base
    validates :title, :amount, :date, presence: true
end
