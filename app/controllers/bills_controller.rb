class BillsController < ApplicationController
    def index
        @bill = Bill.all
    end
    def show
        @bill = Bill.find(params[:id])
    end
    def new
    end
    def create
        @bill = Bill.new(bill_params)
        
        @bill.save
        redirect_to @bill
    end
end
private
def bill_params
    params.require(:bill).permit(:name, :address,:date,:description,:wage,:hours)
end