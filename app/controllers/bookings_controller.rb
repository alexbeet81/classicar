class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit]

    def index
        @bookings = Booking.all
    end
    
    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(booking_params)
        @booking.save
        # TODO: may need to create conditional, for when Car is available or 'not booked'
        # TODO: add redirect to bookings_path when route created
    end

    def show; end

    def edit; end
  
    def update
        @booking.update(booking_params)
        # TODO: add redirect to bookings_path(@booking) when route created
    end
  
    def delete
        @booking.destroy(booking_params)
        # TODO: add redirect to bookings_path when route created
    end

    private

    def booking_params
        params.require(:booking).permit(:start_time, :end_time)
    end

    def set_booking
        @booking = Booking.find(params[:id])
    end
end
