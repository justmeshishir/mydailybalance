class BalanceController < ApplicationController
    def index
        @balances = Balance.all
    end
end
