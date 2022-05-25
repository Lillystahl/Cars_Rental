class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  
  def show
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:title, :price)
  end
end
