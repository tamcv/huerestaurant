class OrdersController < ApplicationController
    def new
      @item = FoodItem.find(params[:food_item_id])
      @order = @item.orders.build
    end

    def create
      @item = FoodItem.find(params[:food_item_id])
      @order = @item.orders.build order_params
      
      if @order.save
          redirect_to menu_path, flash: {success: "Your order is successful!"}
      else
          render 'new'
      end
    end

    def order_params
        params.require(:order).permit(:quantity, :username, :phone, :address)
    end

end
