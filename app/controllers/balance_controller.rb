class BalanceController < ApplicationController
    def index
        @balances = Balance.all
    end
    def new
        @balance = Balance.new
    end
end
