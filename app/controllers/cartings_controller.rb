class CartingsController < ApplicationController
    before_action :authenticate_shopper!
    
    def destroy
        @carting = Carting.find(params[:id])
        @carting.destroy
        flash[:notice] = "Item removed from cart"
        redirect_to shopper_path 
    end
end
