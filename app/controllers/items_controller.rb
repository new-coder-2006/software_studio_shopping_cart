class ItemsController < ApplicationController
    before_action :authenticate_seller!, only: [:new, :create]

    def new
        @item = Item.new
    end

    def create
        @item = current_seller.items.build(item_params)
    
        if @item.save
          redirect_to items_path
        else
          puts item_params
          render :new, status: :unprocessable_entity
        end
    end
    
    def show
        @item = Item.find(params[:id])
    end
    
    def index
        @items = Item.all 
    end

    private

    def item_params
        params.require(:item).permit(:name, :price, :quantity, :details)
    end
end
