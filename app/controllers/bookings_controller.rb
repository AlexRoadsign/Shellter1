class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @hostel = Hostel.find(params[:id])
    @booking = Booking.new(booking_params)
    @bookinng.user = current_user
    if @booking.save
      redirect_to @booking
    else
      render hostel_path(@hostel)
  end

  def update
  end

  def edit
  end

  def delete
  end

  def booking_params
    params.require(:booking).permit(:entry_date, :end_date, :number_of_people)
end
