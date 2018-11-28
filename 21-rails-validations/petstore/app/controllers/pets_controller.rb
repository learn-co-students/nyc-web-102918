class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]

    def index
      @pets = Pet.all
    end

    def show

    end

    def new
      @pet = Pet.new
    end

    def create
      # byebug
      @pet = Pet.create(pet_params)
      if @pet.valid?
        redirect_to @pet
      else
        flash[:errors] = @pet.errors.full_messages
        redirect_to new_pet_path
      end
    end

    def edit

    end

    def update
      @pet.update(pet_params)
      redirect_to pets_path
    end

    def destroy
      @pet.destroy
      redirect_to pets_path
    end

    private

    def find_pet
      @pet = Pet.find(params[:id])
    end

    def pet_params
      params.require(:pet).permit(:creature, :cute, :age)
    end

end
