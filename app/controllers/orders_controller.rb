class OrdersController < ApplicationController
    before_action :authenticate_shopper!, only: [:show]

    def show
        @ordered_items = Order.where("shopper_id = ?", current_shopper.id)
    end
end
