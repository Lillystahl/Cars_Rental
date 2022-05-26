class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @markers = [{
        lat: @car.latitude,
        lng: @car.longitude,
        info_window: render_to_string(partial: "info_window", locals: { car: @car }),
        image_url: helpers.asset_url("https://i.pinimg.com/originals/96/7f/08/967f08d24af11b020931ebe21885f05d.jpg")
    }]
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
