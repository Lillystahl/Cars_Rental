class CarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.availability = true
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end


  private

  def car_params
    params.require(:car).permit(:title, :description, :price, :model_type, :photo)
  end
end
