class CarsController < ApplicationController
  before_action :set_car, only: [:show]
  def index
    @cars = Cars.all
  end

  def show; end

  def new
    @car = Car.new
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
end
