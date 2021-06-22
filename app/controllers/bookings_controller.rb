class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :cancel]
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

    @booking.cancelled = false
    if @booking.save!
      redirect_to booking_path(@booking), notice: "Booking was successfully created."
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
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: "Booking was successfully edited."
    else
      puts "=================NOT SAVING!!!!================="
      render :edit
    end
  end

  # def destroy
  #   @booking.destroy

  #   # Currently redirects to cars_path (index of all the cars)
  #   redirect_to cars_path
  # end

  def cancel
    @booking.cancelled = true

    authorize @booking

    # this is returning a booking with cancelled = true

    # booking params is failing = param is missing or the value is empty:booking
    if @booking.save(cancel_params)
      redirect_to bookings_path(@booking), notice: "booking was successfully cancelled"
    else
      render :show, notice: "unable to cancel booking, please contact host"
    end
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :cancelled)
  end

  def cancel_params
    params.permit(:start_time, :end_time, :cancelled)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
