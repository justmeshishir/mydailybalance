class BalancesController < ApplicationController
    def index
        @balances = Balance.all
        @balance = Balance.new
    end
    def create
        @create_balance = Balance.create(balance_params)
        redirect_to root_path
    end
    
    private
    def balance_params
        params.require(:balance).permit(:title, :amount, :date)
    end
end
