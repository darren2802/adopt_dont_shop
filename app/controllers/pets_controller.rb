class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
    @adopt_status = ''
    if @pet.adoptable == true
      @adopt_status = 'Adoptable'
    else
      @adopt_status = 'Pending adoption'
    end
    @adopt_status
  end

  def new
    @shelter_id = params[:id]
  end

  def create
    modified_params = pet_params
    modified_params[:adoptable] = true
    shelter = Shelter.find(modified_params[:shelter_id])
    pet = shelter.pets.create(modified_params)
    redirect_to "/shelters/#{shelter.id}/pets"
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    pet = Pet.find(params[:id])
    pet.update(pet_params)

    redirect_to "/pets/#{pet.id}"
  end

  def destroy
    pet = Pet.find(params[:id])
    pet.destroy

    redirect_to '/pets'
  end

  private
    def pet_params
      params.permit(:name, :image, :description, :age_approx, :sex, :breed, :shelter_id)
    end

end
