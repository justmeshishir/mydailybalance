class BalancesController < ApplicationController
    def index
        @balances = Balance.all
        @balance = Balance.new
    end
    def create
        @create_balance = Balance.create(balance_params)
        redirect_to root_path
    end
    
    def edit
        @balance = Balance.find(params[:id])
    end
    def update
      @balance = Balance.find(params[:id])
      if @balance.update(balance_params)
        redirect_to root_path
      else
        redirect_to edit_balance_path(params[:id])
      end
    end
    def destroy
        @balance = Balance.find(params[:id])
        @balance.destroy
        redirect_to root_path
    end
    private
    def balance_params
        params.require(:balance).permit(:title, :amount, :date)
    end
end
