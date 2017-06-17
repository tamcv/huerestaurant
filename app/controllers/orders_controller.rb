class OrdersController < ApplicationController
    def new
      @item = FoodItem.find(params[:food_item_id])
      @order = @item.orders.build
    end

    def create
      @item = FoodItem.find(params[:food_item_id])
      @order = @item.orders.build order_params
      
      if @order.save
          redirect_to success_path(:order_id => @order.id), flash: {success: "Your order is successful!"}
      else
          render 'new'
      end
    end

    def success
      @order = Order.find(params[:order_id])
    end

    def order_params
        params.require(:order).permit(:quantity, :username, :phone, :address)
    end

end
