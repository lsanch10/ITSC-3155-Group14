class ClientsController < ApplicationController
  
   
    def index
        @client = Client.all
    end
    def show
        @client = Client.find(params[:id])
    end
    def new
        @client = Client.new
    end
    
    def create
        @client = Client.new(client_params)
        @client.user = current_user
        if @client.save
           redirect_to @client
        else
               render'new'
        end
    end
    def edit
        @client = Client.find(params[:id])
    end
    def update
        @client = Client.find(params[:id])
        if @client.update(client_params)
            redirect_to @client
        else
            render 'edit'
        end
    end
    def destroy
        @client = Client.find(params[:id])
        @client.destroy
        
        redirect_to clients_path
    end
    
end
private 
def client_params
        params.require(:client).permit(:Name, :Address, :Phone_Number, :Email, :Court_Date, :Case_Description)
end