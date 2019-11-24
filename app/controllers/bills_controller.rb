class BillsController < ApplicationController
    
    def index
        @bill = Bill.all
    end
    def show
         @client = Client.find(params[:client_id])
        @bill = @client.bill.find(params[:id])
    end
    def new
    end
    def create
         @client = Client.find(params[:client_id])
         @bill = @client.bill.create(bill_params)
       # @bill = bill.find(params[:bill_id])
       #  @bill = Bill.new(bill_params)
        
         @bill.save
        redirect_to client_path(@client)
    end
end
private
def bill_params
    params.require(:bill).permit(:name, :address,:date,:description,:wage,:hours)
end