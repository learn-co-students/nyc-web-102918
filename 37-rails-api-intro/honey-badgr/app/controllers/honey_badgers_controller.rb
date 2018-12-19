class HoneyBadgersController < ApplicationController
  before_action :set_honey_badger, only: [:show, :edit, :update, :destroy]

  # GET /honey_badgers
  # GET /honey_badgers.json
  def index
    @honey_badgers = HoneyBadger.all
    respond_to do |format|
      format.html
      format.json { render json: @honey_badgers }
    end
  end

  # GET /honey_badgers/1
  # GET /honey_badgers/1.json
  def show
  end

  # GET /honey_badgers/new
  # def new
  #   @honey_badger = HoneyBadger.new
  # end

  # GET /honey_badgers/1/edit
  # def edit
  # end

  # POST /honey_badgers
  # POST /honey_badgers.json
  def create
    @honey_badger = HoneyBadger.new(honey_badger_params)

    respond_to do |format|
      if @honey_badger.save
        format.html { redirect_to @honey_badger, notice: 'Honey badger was successfully created.' }
        format.json { render :show, status: :created, location: @honey_badger }
      else
        format.html { render :new }
        format.json { render json: @honey_badger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /honey_badgers/1
  # PATCH/PUT /honey_badgers/1.json
  def update
    respond_to do |format|
      if @honey_badger.update(honey_badger_params)
        format.html { redirect_to @honey_badger, notice: 'Honey badger was successfully updated.' }
        format.json { render :show, status: :ok, location: @honey_badger }
      else
        format.html { render :edit }
        format.json { render json: @honey_badger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /honey_badgers/1
  # DELETE /honey_badgers/1.json
  def destroy
    @honey_badger.destroy
    respond_to do |format|
      format.html { redirect_to honey_badgers_url, notice: 'Honey badger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_honey_badger
      @honey_badger = HoneyBadger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def honey_badger_params
      params.require(:honey_badger).permit(:name, :weight)
    end
end
