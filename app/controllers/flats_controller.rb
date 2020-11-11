class FlatsController < ApplicationController

  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
    @url = "https://images.unsplash.com/photo-1591474200742-8e512e6f98f8?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80"
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flat_path(@flat)
  end

  def show
  end


  def edit
  end
  def update
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guest)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
