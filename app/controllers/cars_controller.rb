class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cars = policy_scope(Car)

    if params[:query].present?
      sql_query = " \
        cars.address ILIKE :query \
        OR cars.model ILIKE :query \
        OR cars.colour ILIKE :query \
        OR cars.year ILIKE :query \
      "
      @cars = Car.where(sql_query, query: "%#{params[:query]}%")
    else
      @cars = Car.all
    end

    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url('hero-car')
      }
    end
  end

  def show
    @user = @car.user

    @bookings = @car.bookings

    @reviews = Review.all

    # match where review.car_id == car.id
  end

  def new
    @car = Car.new
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    authorize @car

    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit; end

  def update
    @car.update(car_params)

    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @car.destroy

    redirect_to cars_path
  end

  private

  def set_car
    @car = Car.find(params[:id])
    authorize @car
  end

  def car_params
    params.require(:car).permit(:model, :seats, :year, :colour, :address, :price, :image_one, :image_two, :image_three, :photo)
  end
end
