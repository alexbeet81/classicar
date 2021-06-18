class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_car, only: [:new, :create]

  def index
    @bookings = Booking.all
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new

    @car = Car.find(params[:car_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)

    @user = current_user

    @booking.user = @user
    @booking.car = @car

    authorize @booking
    if @booking.save
      redirect_to car_booking_path(@user, @booking), notice: "Booking was successfully created."
    else
      puts "=================NOT SAVING!!!!================="
      render :new
    end
    # TODO: may need to create conditional, for when Car is available or 'not booked'
  end

  def show
    @car = @booking.car
    @car_owner = @car.user
  end

  def edit; end

  def update
    # TODO: This is not currently working. Leads to /booking/:id

    @booking.user = @user
    @booking.car = @car

    authorize @booking

    if @booking.update(booking_params)
      redirect_to car_booking_path(@user, @booking), notice: "Booking was successfully edited."
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy

    # Currently redirects to cars_path (index of all the cars)
    redirect_to cars_path
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
