class Api::V1::PartiesController < ApplicationController
  # GET /api/v1/parties
  def index
    @parties = Party.all
    render json: @parties, status: :ok
  end

  # GET /api/v1/parties/:id
  def show
    @party = Party.find(params[:id])
    render json: @party, status: :ok
  end

  # POST /api/v1/parties
  def create
    # @party = Party.create({ name: params[:name],theme: params[:theme] })
    # @party = Party.create(params.require(:party).permit(:name, :theme))
    @party = Party.create(party_params)
    if @party.valid?
      render json: @party, status: :created
    else
      render json: @party.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def party_params
    params.require(:party).permit(:name, :theme)
  end
end
