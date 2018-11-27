class PartiesController < ApplicationController
  before_action :find_party, only:[:show, :edit, :update, :destroy]

  def index
    @parties = Party.all
    render :index
  end

  def show
    render :show

  end

  def new
    @party = Party.new

  end

  def create
    @party = Party.create(party_params)
    redirect_to parties_path
  end

  def edit

  end

  def update
    @party.update(party_params)
    redirect_to party_path(@party)
  end


  def destroy
    @party.delete
    redirect_to parties_path
  end


private

  def find_party
    @party = Party.find(params[:id])
  end
  #💪
  def party_params
    params.require(:party).permit(:name, :theme, :attendeez)
  end



end
