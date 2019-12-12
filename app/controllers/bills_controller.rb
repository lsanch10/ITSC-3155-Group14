class BillsController < ApplicationController
    
    
    
    def show
        @client = Client.find(params[:client_id])
        @bill = @client.bills.find(params[:id])
    end
    def new
        @bill = Bill.new
    end
    
    def create
        @client = Client.find(params[:client_id])
        @bill = @client.bills.create(bill_params)
        if @bill.save
            redirect_to client_path(@client)
        else
            render'new'
        end
    end
    
    def edit
        @client = Client.find(params[:client_id])
        @bill = @client.bills.find(params[:id])
    end
    
    def update
        @client = Client.find(params[:client_id])
        @bill = @client.bills.find(params[:id])
        if @bill.update(bill_params)
            redirect_to client_path(@client)
        else
            render 'edit'
        end
    end
    
    def destroy
           @client = Client.find(params[:client_id])
           @bill = @client.bills.find(params[:id])
           @bill.destroy
           redirect_to client_path(@client)
    end
    
   
        
    
    
    private 
        def bill_params
            params.require(:bill).permit(:name,:address,:date,:description,:rate,:hours)
        end
    
    
    
    
end
