class CartsController < ApplicationController

  def update
    #byebug - check params
    # byebug

    #add nacho to the cart
    # session[:nacho_id] = params[:nacho_id]
    add_nacho_to_cart(params[:nacho_id])
    # let the user know something happend
    flash[:message] = "Hey you added #{params[:nacho_name]} to your cart!"
    #redirect to nacho path
    redirect_to nachos_path

  end

end
