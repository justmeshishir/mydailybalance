class BalancesController < ApplicationController
    def index
        @balances = Balance.all
        @balance = Balance.new
    end
    def create
        @create_balance = Balance.create(balance_params)
        if @create_balance.valid?
            flash[:success]= "Added successfully!"
            
        else
            flash[:error]= "Sorry, it couldnot be added. Try Again!"
        end
        redirect_to root_path
    end
    
    def edit
        @balance = Balance.find(params[:id])
        
    end
    def update
      @balance = Balance.find(params[:id])
      if @balance.update(balance_params)
          flash[:success]= "Edited successfully!"
        redirect_to root_path
      else
        flash[:error]= "Sorry, it couldnot be added. Try Again!"
        redirect_to edit_balance_path(params[:id])
      end
    end
    def destroy
        @balance = Balance.find(params[:id])
        @balance.destroy
        flash[:success]= "Deleted successfully!"
        redirect_to root_path
    end
    private
    def balance_params
        params.require(:balance).permit(:title, :amount, :date)
    end
end
