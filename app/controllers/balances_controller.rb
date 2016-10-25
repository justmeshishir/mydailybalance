class BalancesController < ApplicationController
    def index
        @balances = Balance.all
        @balance = Balance.new
    end
    def new
        
    end
end
