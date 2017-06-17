class OrdersController < ApplicationController
    def new
      @item = FoodItem.find(params[:food_item_id])
      @order = @item.orders.build
    end

    def create
      @item = FoodItem.find(params[:food_item_id])
      @order = @item.orders.build order_params
      if order_params[:coupon].present?
          if order_params[:coupon] != 'CODERSCHOOL'
              flash.now[:alert] = 'The coupon is invalid!'
              render 'new'
              return
          end
      end
      
      if @order.save
          redirect_to success_path(:order_id => @order.id), flash: {success: "Your order is successful!"}
      else
          render 'new'
      end
    end

    def success
        @order = Order.find(params[:order_id])
        @total = @order.food_item.price * @order.quantity + 20000
        if @order.coupon.present?
            @total = @total/2
        end
        # Send email to user
        if @order.mail.present?

          mail_body = "Thanks for your oder \n
              \n
              ----------------------------- \n
              Item: #{@order.food_item.name} \n
              Quantity: #{@order.quantity} \n
              ----------------------------- \n
              Total: #{ ActionController::Base.helpers.number_to_currency(@total)}\n"

        #   ActionMailer::Base.mail(from: "testrubyclass1@gmail.com", 
        #                         to: "chauviettam@gmail.com", 
        #                         subject: "Hue Restaurant Order", 
        #                         body: mail_body).deliver
        end
    end


    def order_params
        params.require(:order).permit(:quantity, :username, :phone, :address, :coupon, :mail)
    end

end
