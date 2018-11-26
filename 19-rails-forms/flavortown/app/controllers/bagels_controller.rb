class BagelsController < ApplicationController

  def index
    # model
    @bagels = Bagel.all
    # response // view
    render :index
  end

  def new # form
    #model?
    @bagel = Bagel.new
    #response?

  end

  def show
    # model
    @bagel = Bagel.find_by(id: params[:id])
    #response
    # render :show
  end

  def create
    @bagel = Bagel.create(bagel_params)
    redirect_to bagel_path(@bagel)
  end

  def edit
    # model?
    @bagel = Bagel.find(params[:id])

    #response?
    # render :edit
  end

  def update
    #code
    @bagel = Bagel.find(params[:id])
    @bagel.update(bagel_params)
    redirect_to bagel_path(@bagel)
  end

  def destroy
    # model?
    @bagel = Bagel.find(params[:id])
    @bagel.destroy
    redirect_to bagels_path
  end

  private

  # Strong params in order to WHITELIST to prevent scary internet Hax0rZZ
  def bagel_params
    params.require(:bagel).permit(:name,:toasty)
  end

end
