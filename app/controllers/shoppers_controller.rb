class ShoppersController < ApplicationController
    before_action :authenticate_shopper!

    def show
        @carted_items = current_shopper.cartings.joins(:item).select('items.*, cartings.id as carting_id, cartings.saved_for_later')
        @total = 0

        @carted_items.where(saved_for_later: false).each do |carted_item|
            @total += carted_item.price
        end
    end
end
