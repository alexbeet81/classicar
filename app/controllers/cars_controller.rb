class CarsController < ApplicationController
  before_action :set_car, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @cars = Car.all
  end

  def show; end

  private

  def set_car
    @car = Car.find(params[:id])
  end
end
