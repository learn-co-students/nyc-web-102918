class GiftsController < ApplicationController
  before_action :find_gift, only:[:show, :edit, :update, :destroy]

  def index
    @gifts = Gift.all
    render :index
  end


  def show
    render :show
  end

  def new
    @gift = Gift.new
    @parties = Party.all
  end

  def create
    byebug
    @gift = Gift.create(gift_params)
    redirect_to gifts_path
  end

  def edit

  end

  def update
    @gift.update(gift_params)
    redirect_to gift_path(@gift)
  end


  def destroy
    @gift.delete
    redirect_to gifts_path
  end


private

  def find_gift
    @gift = Gift.find(params[:id])
  end
  #💪
  def gift_params
    params.require(:gift).permit(:name, :price, :party_id)
  end

end
