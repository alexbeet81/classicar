class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking), notice: "Booking was successfully created."
    else
      render :new
    end
    # TODO: may need to create conditional, for when Car is available or 'not booked'
  end

  def show; end

  def edit; end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: "Booking was successfully edited."
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy(booking_params)

    redirect_to car_path(@car)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
