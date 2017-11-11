class ListsController < ApplicationController
    def create 
        @list = List.new(list_params)
        if @list.save
            flash[:notice] = "Your item has been added!"
            redirect_to root_path
        else
            redirect_to root_path
        end
    end
    
    def destroy 
        @list = List.find(params[:id])
        @list.destroy
        redirect_to root_path
    end
    
    private
    
    def list_params
        params.require(:list).permit(:item)
    end
end
