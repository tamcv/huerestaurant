class OrdersController < ApplicationController
    def new
      @item = FoodItem.find(params[:food_item_id])
    end
end
