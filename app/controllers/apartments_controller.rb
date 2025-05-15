class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    if @apartment.save
      redirect_to apartments_path, notice: "Apartment listing created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def apartment_params
    params.require(:apartment).permit(:title, :price, :address, :description)
  end
end
