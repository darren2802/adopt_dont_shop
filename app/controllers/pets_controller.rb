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

end
