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

  private
    def pet_params
      params.require(:pet).permit(:name)
    end
end