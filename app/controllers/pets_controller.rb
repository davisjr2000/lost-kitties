class PetsController < ApplicationController

  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  # Nós identificamos o @pet pelo :id 4 vezes no nosso controller.
  # Para deixar o código DRY, usamos o before_action para chamar
  # esse método antes da execução do código.

  # Read all pets (GET request)
  def index
    @pets = Pet.all
  end

  # Read one pet (GET request)
  def show
  end

  # Form for the new pet (GET request)
  def new
    @pet = Pet.new
  end

  # Creation of the new pet (POST request)

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to @pet
    else
      render :new
    end
  end

  # Form for editing an exisiting pet (GET request)

  def edit
  end

  # Updating the existing pet (PATCH request)

  def update
    @pet.update(pet_params)
    redirect_to @pet
  end

  # Delete an existing pet from our DB (DELETE request)

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  # Private methods, we don't want the user to access our params.
  # NEVER TRUST USER DATA!

  private

  # Method for finding a pet using the params[:id]

  def set_pet
    @pet = Pet.find(params[:id])
  end

  # Validate the params passed by the user when creating/updating a pet instance

  def pet_params
    params.require(:pet).permit(:name, :address, :found_on, :species)
  end
end
