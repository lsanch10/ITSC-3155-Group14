class BillsController < ApplicationController
    def new
    end
    def create
        render plain: params[:bill].inspect
    end
end
