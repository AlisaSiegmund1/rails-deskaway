class BookingsController < ApplicationController
  before_action :set_workspace

  def index
    # @bookings = policy_scope(Booking).order(:date)
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.workspace = @workspace
    @booking.user = current_user

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

  def set_workspace
    @workspace = Workspace.find(params[:workspace_id])
  end
end
