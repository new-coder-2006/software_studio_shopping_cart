class OrdersController < ApplicationController
    before_action :authenticate_shopper!, only: [:show]

    def show
        @ordered_items = current_shopper.ordered_items
    end
end
