class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    Pet.create(pet_params)
    redirect_to '/pets'
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to '/pets'
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to '/pets'
  end

  private
    def pet_params
      params.require(:pet).permit(:name)
    end
end