class BookingsController < ApplicationController
  before_action :set_workspace

  def index
    @bookings = policy_scope(Booking).order(:date)
    # @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.workspace = @workspace
    @booking.user = current_user
    authorize @booking

    # get the bookings for date the the user chose params[:date]
    # get the capacity of the booking
    # if number of booking >= capacity -> render workspaces/show with message

    if @booking.save
      redirect_to profile_path, notice: "Your booking was created!"
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to profile_path, notice: "Booking is canceled!"
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time)
  end

  def set_workspace
    @workspace = Workspace.find(params[:workspace_id])
  end
end
