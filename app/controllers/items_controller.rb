class ItemsController < ApplicationController
    before_action :authenticate_seller!, only: [:new, :create, :edit, :update]

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

    def edit
        @item = Item.find(params[:id])
    end
    
    def update
        @item = Item.find(params[:id])
    
        if @item.update(item_params)
          redirect_to @item
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
  
      redirect_to root_path, status: :see_other
    end    

    private

    def item_params
        params.require(:item).permit(:name, :price, :quantity, :details)
    end
end
