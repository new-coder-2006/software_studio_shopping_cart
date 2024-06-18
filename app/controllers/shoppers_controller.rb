class ShoppersController < ApplicationController
    before_action :authenticate_shopper!

    def show
        @carted_items = current_shopper.cart_items
    end
end
