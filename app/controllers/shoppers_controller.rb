class ShoppersController < ApplicationController
    before_action :authenticate_shopper!

    def show
        @carted_items = current_shopper.cartings.joins(:item).select('items.*, cartings.id as carting_id, cartings.saved_for_later')
    end
end
