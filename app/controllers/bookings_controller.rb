class BookingsController < ApplicationController
  before_action :set_booking, only: [:create, :destroy]

  def index
    @bookings = policy_scope(Booking).order(:date)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.workspace = @workspace
    @booking.user = current_user
    authorize @booking

    if @booking.save
      redirect_to bookings_index, notice: 'Booking was successfully added.'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time)
  end

  def set_booking
    @bookins = Booking.find(params[:booking_id])
    authorize @booking
  end
end
