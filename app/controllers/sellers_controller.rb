class SellersController < ApplicationController
    before_action :authenticate_seller!

    def show
        @seller_items = current_seller.items 
    end
end
