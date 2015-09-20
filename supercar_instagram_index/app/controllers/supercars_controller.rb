class SupercarsController < ApplicationController
  before_action :set_supercar, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @supercars = Supercar.all
    respond_with(@supercars)
  end

  def show
    respond_with(@supercar)
  end

  def new
    @supercar = Supercar.new
    respond_with(@supercar)
  end

  def edit
  end

  def create
    @supercar = Supercar.new(supercar_params)
    @supercar.save
    respond_with(@supercar)
  end

  def update
    @supercar.update(supercar_params)
    respond_with(@supercar)
  end

  def destroy
    @supercar.destroy
    respond_with(@supercar)
  end

  private
    def set_supercar
      @supercar = Supercar.find(params[:id])
    end

    def supercar_params
      params.require(:supercar).permit(:name, :city)
    end
end
