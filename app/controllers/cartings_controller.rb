class CartingsController < ApplicationController
    before_action :authenticate_shopper!
    
    def destroy
        @carting = Carting.find(params[:id])
        @carting.destroy
        flash[:notice] = "Item removed from cart"
        redirect_to shopper_path 
    end

    def move_to_saved
        @carting = Carting.find(params[:id])
        @carting.update(saved_for_later: true)
        flash[:notice] = "Item moved to Saved for Later"
        redirect_to shopper_path 
    end
    
    def move_to_cart
        @carting = Carting.find(params[:id])
        @carting.update(saved_for_later: false)
        flash[:notice] = "Item moved to cart"
        redirect_to shopper_path 
    end
end
