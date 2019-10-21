class BookingsController < ApplicationController
    def index
      @booking = Booking.all

      if @booking.present?
        render json: @booking.includes(:room,:user), status: :ok
      else 
        render json: { error: 'No data was found' }, status: :ok
      end
    end
  
    def show
      @booking = Booking.find(params[:id])
      render json: @booking, status: :ok
    end
  
    def create
      booking = Booking.new(booking_params)
  
      if booking.save
        render json: booking, status: :created
      else 
        render json: booking.errors, status: :unprocessable_entity
      end
    end

    def update 
      booking = Booking.find(params[:id])
      booking.assign_attributes(minibar: booking_params[:minibar])

      if booking.save
        booking.calculate_final_price
        render json: booking, status: :ok
      else 
        render json: booking.errors, status: :unprocessable_entity
      end
    end
    
    private 

    def booking_params 
      params.require(:booking).permit(:room_id, :user_id, :check_in, :check_out, :minibar)
    end
  end