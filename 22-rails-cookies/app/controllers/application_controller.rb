class ApplicationController < ActionController::Base

  # method for a "cart"
  # maybe session? hold my nacho_id's
  def cart
    session[:cart] ||= []
    # if session[:cart]
    #   session[:cart]
    # else
    #   session[:cart] = []
    # end
  end

  # method to add a nacho to a cart
  def add_nacho_to_cart(nacho_id)
    cart << nacho_id
  end


  #display your cart on your website
  def display_nacho_cart
    # get the nachos with the cart and pass to controller to send to view
    @cart_items = Nacho.find(cart)
  end



end
