class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]
  def home

  end

  def dashboardmycars
    @cars_user = []
    Car.all.each do |car|
      if car.user == current_user
        @cars_user<<car
      end
    end
  end

  def dashboardmybookings
    @user = current_user
  end

end
